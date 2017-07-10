.class Lorg/telegram/messenger/FileUploadOperation$3;
.super Ljava/lang/Object;
.source "FileUploadOperation.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileUploadOperation;

.field final synthetic val$currentRequestBytes:I

.field final synthetic val$currentRequestBytesOffset:J

.field final synthetic val$currentRequestIv:[B

.field final synthetic val$currentRequestPartNum:I

.field final synthetic val$requestNumFinal:I

.field final synthetic val$requestSize:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileUploadOperation;I[BIIIJ)V
    .registers 10
    .param p1, "this$0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 404
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iput p2, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$requestSize:I

    iput-object p3, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestIv:[B

    iput p4, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$requestNumFinal:I

    iput p5, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestBytes:I

    iput p6, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestPartNum:I

    iput-wide p7, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestBytesOffset:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 17
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 407
    if-eqz p1, :cond_f2

    iget v11, p1, Lorg/telegram/tgnet/TLObject;->networkType:I

    .line 408
    .local v11, "networkType":I
    :goto_4
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/high16 v1, 0x3000000

    if-ne v0, v1, :cond_f8

    .line 409
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    const/4 v1, 0x3

    iget v3, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$requestSize:I

    int-to-long v4, v3

    invoke-virtual {v0, v11, v1, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    .line 417
    :cond_19
    :goto_19
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestIv:[B

    if-eqz v0, :cond_28

    .line 418
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1000(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestIv:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_28
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1100(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$requestNumFinal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_358

    .line 422
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$1200(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v4

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestBytes:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    # setter for: Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J
    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/FileUploadOperation;->access$1202(Lorg/telegram/messenger/FileUploadOperation;J)J

    .line 423
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1300(Lorg/telegram/messenger/FileUploadOperation;)Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J
    invoke-static {v3}, Lorg/telegram/messenger/FileUploadOperation;->access$1200(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v4

    long-to-float v3, v4

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J
    invoke-static {v4}, Lorg/telegram/messenger/FileUploadOperation;->access$300(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v0, v1, v3}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didChangedUploadProgress(Lorg/telegram/messenger/FileUploadOperation;F)V

    .line 424
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # operator-- for: Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$810(Lorg/telegram/messenger/FileUploadOperation;)I

    .line 425
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1400(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$800(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    if-nez v0, :cond_1eb

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->state:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1500(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1eb

    .line 426
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    const/4 v1, 0x3

    # setter for: Lorg/telegram/messenger/FileUploadOperation;->state:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileUploadOperation;->access$1502(Lorg/telegram/messenger/FileUploadOperation;I)I

    .line 427
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->key:[B
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1600(Lorg/telegram/messenger/FileUploadOperation;)[B

    move-result-object v0

    if-nez v0, :cond_172

    .line 429
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1700(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 430
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputFileBig;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputFileBig;-><init>()V

    .line 435
    .local v2, "result":Lorg/telegram/tgnet/TLRPC$InputFile;
    :goto_9d
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$InputFile;->parts:I

    .line 436
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2000(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v0

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$InputFile;->id:J

    .line 437
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2100(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$2100(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$InputFile;->name:Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1300(Lorg/telegram/messenger/FileUploadOperation;)Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFinishUploadingFile(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[B)V

    .line 439
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # invokes: Lorg/telegram/messenger/FileUploadOperation;->cleanup()V
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2200(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 493
    .end local v2    # "result":Lorg/telegram/tgnet/TLRPC$InputFile;
    :cond_da
    :goto_da
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/high16 v1, 0x3000000

    if-ne v0, v1, :cond_30d

    .line 494
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    .line 506
    :cond_f1
    :goto_f1
    return-void

    .line 407
    .end local v11    # "networkType":I
    :cond_f2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v11

    goto/16 :goto_4

    .line 410
    .restart local v11    # "networkType":I
    :cond_f8
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_10f

    .line 411
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    const/4 v1, 0x2

    iget v3, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$requestSize:I

    int-to-long v4, v3

    invoke-virtual {v0, v11, v1, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    goto/16 :goto_19

    .line 412
    :cond_10f
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_126

    .line 413
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    const/4 v1, 0x4

    iget v3, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$requestSize:I

    int-to-long v4, v3

    invoke-virtual {v0, v11, v1, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    goto/16 :goto_19

    .line 414
    :cond_126
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/high16 v1, 0x4000000

    if-ne v0, v1, :cond_19

    .line 415
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    const/4 v1, 0x5

    iget v3, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$requestSize:I

    int-to-long v4, v3

    invoke-virtual {v0, v11, v1, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    goto/16 :goto_19

    .line 432
    :cond_13d
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputFile;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputFile;-><init>()V

    .line 433
    .restart local v2    # "result":Lorg/telegram/tgnet/TLRPC$InputFile;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%32s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;
    invoke-static {v7}, Lorg/telegram/messenger/FileUploadOperation;->access$1800(Lorg/telegram/messenger/FileUploadOperation;)Ljava/security/MessageDigest;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$InputFile;->md5_checksum:Ljava/lang/String;

    goto/16 :goto_9d

    .line 442
    .end local v2    # "result":Lorg/telegram/tgnet/TLRPC$InputFile;
    :cond_172
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1700(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 443
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;-><init>()V

    .line 448
    .local v2, "result":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    :goto_17f
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->parts:I

    .line 449
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2000(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v0

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J

    .line 450
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2300(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->key_fingerprint:I

    .line 451
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1300(Lorg/telegram/messenger/FileUploadOperation;)Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->key:[B
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1600(Lorg/telegram/messenger/FileUploadOperation;)[B

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->iv:[B
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2400(Lorg/telegram/messenger/FileUploadOperation;)[B

    move-result-object v8

    move-object v6, v2

    invoke-interface/range {v3 .. v8}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFinishUploadingFile(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[B)V

    .line 452
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # invokes: Lorg/telegram/messenger/FileUploadOperation;->cleanup()V
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2200(Lorg/telegram/messenger/FileUploadOperation;)V

    goto/16 :goto_da

    .line 445
    .end local v2    # "result":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    :cond_1b7
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;-><init>()V

    .line 446
    .restart local v2    # "result":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%32s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;
    invoke-static {v7}, Lorg/telegram/messenger/FileUploadOperation;->access$1800(Lorg/telegram/messenger/FileUploadOperation;)Ljava/security/MessageDigest;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->md5_checksum:Ljava/lang/String;

    goto :goto_17f

    .line 454
    .end local v2    # "result":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    :cond_1eb
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$800(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_da

    .line 455
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$200(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    if-nez v0, :cond_2d1

    .line 456
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2500(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_20c

    .line 457
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileUploadOperation;->access$2502(Lorg/telegram/messenger/FileUploadOperation;I)I

    .line 459
    :cond_20c
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestPartNum:I

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$2600(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v1

    if-ne v0, v1, :cond_2d8

    .line 460
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # operator++ for: Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2608(Lorg/telegram/messenger/FileUploadOperation;)I

    .line 461
    iget-wide v12, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestBytesOffset:J

    .line 462
    .local v12, "offsetToSave":J
    iget-object v10, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestIv:[B

    .line 464
    .local v10, "ivToSave":[B
    :goto_21f
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2700(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$2600(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;

    .local v2, "result":Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;
    if-eqz v2, :cond_258

    .line 465
    # getter for: Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->bytesOffset:J
    invoke-static {v2}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$2800(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;)J

    move-result-wide v12

    .line 466
    # getter for: Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->iv:[B
    invoke-static {v2}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$2900(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;)[B

    move-result-object v10

    .line 467
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2700(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$2600(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # operator++ for: Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2608(Lorg/telegram/messenger/FileUploadOperation;)I

    goto :goto_21f

    .line 470
    :cond_258
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1700(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-eqz v0, :cond_26b

    const-wide/32 v0, 0x100000

    rem-long v0, v12, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_27b

    :cond_26b
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1700(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-nez v0, :cond_2cc

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2500(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    if-nez v0, :cond_2cc

    .line 471
    :cond_27b
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$000(Lorg/telegram/messenger/FileUploadOperation;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 472
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$3000(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_uploaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 473
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$3100(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-eqz v0, :cond_2c9

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$3000(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ivc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 476
    :cond_2c9
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 487
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "ivToSave":[B
    .end local v12    # "offsetToSave":J
    :cond_2cc
    :goto_2cc
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # operator++ for: Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2508(Lorg/telegram/messenger/FileUploadOperation;)I

    .line 491
    .end local v2    # "result":Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;
    :cond_2d1
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # invokes: Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$100(Lorg/telegram/messenger/FileUploadOperation;)V

    goto/16 :goto_da

    .line 479
    :cond_2d8
    new-instance v2, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;-><init>(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/messenger/FileUploadOperation$1;)V

    .line 480
    .restart local v2    # "result":Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestBytesOffset:J

    # setter for: Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->bytesOffset:J
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$2802(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;J)J

    .line 481
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestIv:[B

    if-eqz v0, :cond_2fd

    .line 482
    const/16 v0, 0x20

    new-array v0, v0, [B

    # setter for: Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->iv:[B
    invoke-static {v2, v0}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$2902(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;[B)[B

    .line 483
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestIv:[B

    const/4 v1, 0x0

    # getter for: Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->iv:[B
    invoke-static {v2}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$2900(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    :cond_2fd
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2700(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestPartNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2cc

    .line 495
    .end local v2    # "result":Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;
    :cond_30d
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_326

    .line 496
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_f1

    .line 497
    :cond_326
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_33f

    .line 498
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_f1

    .line 499
    :cond_33f
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/high16 v1, 0x4000000

    if-ne v0, v1, :cond_f1

    .line 500
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_f1

    .line 503
    :cond_358
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1300(Lorg/telegram/messenger/FileUploadOperation;)Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 504
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # invokes: Lorg/telegram/messenger/FileUploadOperation;->cleanup()V
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2200(Lorg/telegram/messenger/FileUploadOperation;)V

    goto/16 :goto_f1
.end method

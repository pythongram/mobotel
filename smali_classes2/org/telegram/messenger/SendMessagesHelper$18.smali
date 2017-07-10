.class final Lorg/telegram/messenger/SendMessagesHelper$18;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$captions:Ljava/util/ArrayList;

.field final synthetic val$dialog_id:J

.field final synthetic val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

.field final synthetic val$masks:Ljava/util/ArrayList;

.field final synthetic val$pathsCopy:Ljava/util/ArrayList;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$urisCopy:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
    .registers 10

    .prologue
    .line 4429
    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$dialog_id:J

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$pathsCopy:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$urisCopy:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$captions:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$masks:Ljava/util/ArrayList;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    .prologue
    .line 4432
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$dialog_id:J

    long-to-int v4, v4

    if-nez v4, :cond_ad

    const/16 v17, 0x1

    .line 4434
    .local v17, "isEncrypted":Z
    :goto_9
    const/16 v23, 0x0

    .line 4435
    .local v23, "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v25, 0x0

    .line 4436
    .local v25, "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .line 4437
    .local v24, "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 4438
    .local v15, "count":I
    :goto_21
    const/16 v20, 0x0

    .line 4439
    .local v20, "path":Ljava/lang/String;
    const/16 v29, 0x0

    .line 4440
    .local v29, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 4441
    .local v7, "extension":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "a":I
    :goto_27
    if-ge v12, v15, :cond_242

    .line 4442
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_bb

    .line 4443
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "path":Ljava/lang/String;
    check-cast v20, Ljava/lang/String;

    .line 4448
    .restart local v20    # "path":Ljava/lang/String;
    :cond_3d
    :goto_3d
    move-object/from16 v18, v20

    .line 4449
    .local v18, "originalPath":Ljava/lang/String;
    move-object/from16 v28, v20

    .line 4450
    .local v28, "tempPath":Ljava/lang/String;
    if-nez v28, :cond_4d

    if-eqz v29, :cond_4d

    .line 4451
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v28

    .line 4452
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4455
    :cond_4d
    const/16 v16, 0x0

    .line 4456
    .local v16, "isDocument":Z
    if-eqz v28, :cond_d4

    const-string v4, ".gif"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_65

    const-string v4, ".webp"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 4457
    :cond_65
    const-string v4, ".gif"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 4458
    const-string v7, "gif"

    .line 4462
    :goto_71
    const/16 v16, 0x1

    .line 4477
    :cond_73
    :goto_73
    if-eqz v16, :cond_109

    .line 4478
    if-nez v23, :cond_86

    .line 4479
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 4480
    .restart local v23    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v25, Ljava/util/ArrayList;

    .end local v25    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 4481
    .restart local v25    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    .end local v24    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 4483
    .restart local v24    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_86
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4484
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4485
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$captions:Ljava/util/ArrayList;

    if-eqz v4, :cond_107

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$captions:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_a4
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4441
    :goto_a9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_27

    .line 4432
    .end local v7    # "extension":Ljava/lang/String;
    .end local v12    # "a":I
    .end local v15    # "count":I
    .end local v16    # "isDocument":Z
    .end local v17    # "isEncrypted":Z
    .end local v18    # "originalPath":Ljava/lang/String;
    .end local v20    # "path":Ljava/lang/String;
    .end local v23    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "tempPath":Ljava/lang/String;
    .end local v29    # "uri":Landroid/net/Uri;
    :cond_ad
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 4437
    .restart local v17    # "isEncrypted":Z
    .restart local v23    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$urisCopy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    goto/16 :goto_21

    .line 4444
    .restart local v7    # "extension":Ljava/lang/String;
    .restart local v12    # "a":I
    .restart local v15    # "count":I
    .restart local v20    # "path":Ljava/lang/String;
    .restart local v29    # "uri":Landroid/net/Uri;
    :cond_bb
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$urisCopy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 4445
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$urisCopy:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "uri":Landroid/net/Uri;
    check-cast v29, Landroid/net/Uri;

    .restart local v29    # "uri":Landroid/net/Uri;
    goto/16 :goto_3d

    .line 4460
    .restart local v16    # "isDocument":Z
    .restart local v18    # "originalPath":Ljava/lang/String;
    .restart local v28    # "tempPath":Ljava/lang/String;
    :cond_d1
    const-string v7, "webp"

    goto :goto_71

    .line 4463
    :cond_d4
    if-nez v28, :cond_73

    if-eqz v29, :cond_73

    .line 4464
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->isGif(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 4465
    const/16 v16, 0x1

    .line 4466
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4467
    const-string v4, "gif"

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 4468
    const-string v7, "gif"

    goto :goto_73

    .line 4469
    :cond_ef
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->isWebp(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 4470
    const/16 v16, 0x1

    .line 4471
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4472
    const-string v4, "webp"

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 4473
    const-string v7, "webp"

    goto/16 :goto_73

    .line 4485
    :cond_107
    const/4 v4, 0x0

    goto :goto_a4

    .line 4487
    :cond_109
    if-eqz v28, :cond_1d4

    .line 4488
    new-instance v27, Ljava/io/File;

    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4489
    .local v27, "temp":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4493
    .end local v27    # "temp":Ljava/io/File;
    :goto_135
    const/16 v21, 0x0

    .line 4494
    .local v21, "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    if-nez v17, :cond_15d

    .line 4495
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    if-nez v17, :cond_1d8

    const/4 v4, 0x0

    :goto_140
    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v21

    .end local v21    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    check-cast v21, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .line 4496
    .restart local v21    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    if-nez v21, :cond_15d

    if-eqz v29, :cond_15d

    .line 4497
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    if-nez v17, :cond_1db

    const/4 v4, 0x0

    :goto_157
    invoke-virtual {v5, v6, v4}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v21

    .end local v21    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    check-cast v21, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .line 4500
    .restart local v21    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_15d
    if-nez v21, :cond_16b

    .line 4501
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v21

    .line 4503
    :cond_16b
    if-eqz v21, :cond_20a

    .line 4504
    move-object/from16 v22, v21

    .line 4505
    .local v22, "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 4506
    .local v19, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$captions:Ljava/util/ArrayList;

    if-eqz v4, :cond_188

    .line 4507
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$captions:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    .line 4509
    :cond_188
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$masks:Ljava/util/ArrayList;

    if-eqz v4, :cond_1ef

    .line 4510
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$masks:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 4511
    .local v13, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    if-eqz v13, :cond_1de

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1de

    const/4 v4, 0x1

    :goto_1a1
    move-object/from16 v0, v21

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->has_stickers:Z

    if-eqz v4, :cond_1ef

    .line 4512
    new-instance v26, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x14

    add-int/lit8 v4, v4, 0x4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 4513
    .local v26, "serializedData":Lorg/telegram/tgnet/SerializedData;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 4514
    const/4 v14, 0x0

    .local v14, "b":I
    :goto_1c0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_1e0

    .line 4515
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/telegram/tgnet/TLRPC$InputDocument;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4514
    add-int/lit8 v14, v14, 0x1

    goto :goto_1c0

    .line 4491
    .end local v13    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    .end local v14    # "b":I
    .end local v19    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    .end local v22    # "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    .end local v26    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_1d4
    const/16 v18, 0x0

    goto/16 :goto_135

    .line 4495
    .restart local v21    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_1d8
    const/4 v4, 0x3

    goto/16 :goto_140

    .line 4497
    :cond_1db
    const/4 v4, 0x3

    goto/16 :goto_157

    .line 4511
    .restart local v13    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    .restart local v19    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_1de
    const/4 v4, 0x0

    goto :goto_1a1

    .line 4517
    .restart local v14    # "b":I
    .restart local v26    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_1e0
    const-string v4, "masks"

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4520
    .end local v13    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    .end local v14    # "b":I
    .end local v26    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_1ef
    if-eqz v18, :cond_1fa

    .line 4521
    const-string v4, "originalPath"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4523
    :cond_1fa
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$18$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper$18$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$18;Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/util/HashMap;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_a9

    .line 4530
    .end local v19    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_20a
    if-nez v23, :cond_21b

    .line 4531
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 4532
    .restart local v23    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v25, Ljava/util/ArrayList;

    .end local v25    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 4533
    .restart local v25    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    .end local v24    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 4535
    .restart local v24    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_21b
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4536
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4537
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$captions:Ljava/util/ArrayList;

    if-eqz v4, :cond_240

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$captions:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_239
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a9

    :cond_240
    const/4 v4, 0x0

    goto :goto_239

    .line 4541
    .end local v16    # "isDocument":Z
    .end local v18    # "originalPath":Ljava/lang/String;
    .end local v21    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    .end local v28    # "tempPath":Ljava/lang/String;
    :cond_242
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    if-eqz v4, :cond_24f

    .line 4542
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    invoke-virtual {v4}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->releasePermission()V

    .line 4544
    :cond_24f
    if-eqz v23, :cond_285

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_285

    .line 4545
    const/4 v12, 0x0

    :goto_258
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_285

    .line 4546
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$dialog_id:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static/range {v4 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z

    .line 4545
    add-int/lit8 v12, v12, 0x1

    goto :goto_258

    .line 4549
    :cond_285
    return-void
.end method

.class Lorg/telegram/messenger/SecretChatHelper$4;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SecretChatHelper;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field final synthetic val$encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

.field final synthetic val$newMsg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

.field final synthetic val$originalPath:Ljava/lang/String;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .registers 8
    .param p1, "this$0"    # Lorg/telegram/messenger/SecretChatHelper;

    .prologue
    .line 555
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$4;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object p3, p0, Lorg/telegram/messenger/SecretChatHelper$4;->val$req:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    iput-object p4, p0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p5, p0, Lorg/telegram/messenger/SecretChatHelper$4;->val$encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iput-object p6, p0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsg:Lorg/telegram/messenger/MessageObject;

    iput-object p7, p0, Lorg/telegram/messenger/SecretChatHelper$4;->val$originalPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 561
    :try_start_0
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;-><init>()V

    .line 562
    .local v15, "layer":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;
    const/16 v2, 0x2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getMyLayerVersion(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 563
    .local v19, "myLayer":I
    const/16 v2, 0x2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->layer:I

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$req:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    iput-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->message:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    .line 565
    const/16 v2, 0xf

    new-array v2, v2, [B

    iput-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->random_bytes:[B

    .line 566
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v3, v15, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->random_bytes:[B

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 567
    move-object/from16 v23, v15

    .line 569
    .local v23, "toEncryptObject":Lorg/telegram/tgnet/TLObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    if-nez v2, :cond_65

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    if-nez v2, :cond_65

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_26e

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v3, 0x1

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 577
    :cond_65
    :goto_65
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    if-nez v2, :cond_27c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    if-nez v2, :cond_27c

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_ff

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    if-nez v2, :cond_b3

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 585
    :cond_b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    iput-short v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    const/16 v3, 0x64

    if-ge v2, v3, :cond_dc

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    const v4, 0x93a80

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_ff

    :cond_dc
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_ff

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_ff

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->requestNewSecretChatKey(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 590
    :cond_ff
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_139

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v15, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v15, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    .line 594
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->setMessageSeq(III)V

    .line 600
    :cond_139
    :goto_139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$req:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " send message with in_seq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v15, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out_seq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v15, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v16

    .line 603
    .local v16, "len":I
    new-instance v22, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int/lit8 v2, v16, 0x4

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 604
    .local v22, "toEncrypt":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 605
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 607
    move-object/from16 v0, v22

    iget-object v2, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->computeSHA1(Ljava/nio/ByteBuffer;)[B

    move-result-object v18

    .line 608
    .local v18, "messageKeyFull":[B
    const/16 v2, 0x10

    new-array v0, v2, [B

    move-object/from16 v17, v0

    .line 609
    .local v17, "messageKey":[B
    move-object/from16 v0, v18

    array-length v2, v0

    if-eqz v2, :cond_1a2

    .line 610
    move-object/from16 v0, v18

    array-length v2, v0

    add-int/lit8 v2, v2, -0x10

    const/4 v3, 0x0

    const/16 v4, 0x10

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    :cond_1a2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/MessageKeyData;->generateMessageKeyData([B[BZ)Lorg/telegram/messenger/MessageKeyData;

    move-result-object v14

    .line 615
    .local v14, "keyData":Lorg/telegram/messenger/MessageKeyData;
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/tgnet/NativeByteBuffer;->length()I

    move-result v16

    .line 616
    rem-int/lit8 v2, v16, 0x10

    if-eqz v2, :cond_28e

    rem-int/lit8 v2, v16, 0x10

    rsub-int/lit8 v13, v2, 0x10

    .line 617
    .local v13, "extraLen":I
    :goto_1bb
    new-instance v11, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int v2, v16, v13

    invoke-direct {v11, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 618
    .local v11, "dataForEncryption":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 619
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes(Lorg/telegram/tgnet/NativeByteBuffer;)V

    .line 620
    if-eqz v13, :cond_1d9

    .line 621
    new-array v9, v13, [B

    .line 622
    .local v9, "b":[B
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 623
    invoke-virtual {v11, v9}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 625
    .end local v9    # "b":[B
    :cond_1d9
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 627
    iget-object v2, v11, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, v14, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    iget-object v4, v14, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v8

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 629
    new-instance v10, Lorg/telegram/tgnet/NativeByteBuffer;

    move-object/from16 v0, v17

    array-length v2, v0

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v10, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 630
    .local v10, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    invoke-virtual {v10, v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    .line 632
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 633
    invoke-virtual {v10, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes(Lorg/telegram/tgnet/NativeByteBuffer;)V

    .line 634
    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 635
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    if-nez v2, :cond_2c8

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$req:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    if-eqz v2, :cond_291

    .line 641
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;

    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;-><init>()V

    .line 642
    .local v20, "req2":Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;
    move-object/from16 v0, v20

    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$req:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    move-object/from16 v0, v20

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->random_id:J

    .line 644
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    move-object/from16 v0, v20

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 645
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 646
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 647
    move-object/from16 v21, v20

    .line 667
    .end local v20    # "req2":Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;
    .local v21, "reqToSend":Lorg/telegram/tgnet/TLObject;
    :goto_25b
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/SecretChatHelper$4$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/messenger/SecretChatHelper$4$1;-><init>(Lorg/telegram/messenger/SecretChatHelper$4;)V

    const/16 v4, 0x40

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 751
    .end local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v11    # "dataForEncryption":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v13    # "extraLen":I
    .end local v14    # "keyData":Lorg/telegram/messenger/MessageKeyData;
    .end local v15    # "layer":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;
    .end local v16    # "len":I
    .end local v17    # "messageKey":[B
    .end local v18    # "messageKeyFull":[B
    .end local v19    # "myLayer":I
    .end local v21    # "reqToSend":Lorg/telegram/tgnet/TLObject;
    .end local v22    # "toEncrypt":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v23    # "toEncryptObject":Lorg/telegram/tgnet/TLObject;
    :goto_26d
    return-void

    .line 573
    .restart local v15    # "layer":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;
    .restart local v19    # "myLayer":I
    .restart local v23    # "toEncryptObject":Lorg/telegram/tgnet/TLObject;
    :cond_26e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v3, 0x1

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_275} :catch_277

    goto/16 :goto_65

    .line 748
    .end local v15    # "layer":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;
    .end local v19    # "myLayer":I
    .end local v23    # "toEncryptObject":Lorg/telegram/tgnet/TLObject;
    :catch_277
    move-exception v12

    .line 749
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_26d

    .line 597
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v15    # "layer":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;
    .restart local v19    # "myLayer":I
    .restart local v23    # "toEncryptObject":Lorg/telegram/tgnet/TLObject;
    :cond_27c
    :try_start_27c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    goto/16 :goto_139

    .line 616
    .restart local v14    # "keyData":Lorg/telegram/messenger/MessageKeyData;
    .restart local v16    # "len":I
    .restart local v17    # "messageKey":[B
    .restart local v18    # "messageKeyFull":[B
    .restart local v22    # "toEncrypt":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_28e
    const/4 v13, 0x0

    goto/16 :goto_1bb

    .line 649
    .restart local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v11    # "dataForEncryption":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v13    # "extraLen":I
    :cond_291
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;

    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;-><init>()V

    .line 650
    .local v20, "req2":Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;
    move-object/from16 v0, v20

    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$req:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    move-object/from16 v0, v20

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->random_id:J

    .line 652
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    move-object/from16 v0, v20

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 653
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 654
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 655
    move-object/from16 v21, v20

    .line 656
    .restart local v21    # "reqToSend":Lorg/telegram/tgnet/TLObject;
    goto :goto_25b

    .line 658
    .end local v20    # "req2":Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;
    .end local v21    # "reqToSend":Lorg/telegram/tgnet/TLObject;
    :cond_2c8
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;

    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;-><init>()V

    .line 659
    .local v20, "req2":Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;
    move-object/from16 v0, v20

    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$req:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    move-object/from16 v0, v20

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;->random_id:J

    .line 661
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    move-object/from16 v0, v20

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 662
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 663
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-object/from16 v0, v20

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;->file:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    :try_end_304
    .catch Ljava/lang/Exception; {:try_start_27c .. :try_end_304} :catch_277

    .line 665
    move-object/from16 v21, v20

    .restart local v21    # "reqToSend":Lorg/telegram/tgnet/TLObject;
    goto/16 :goto_25b
.end method

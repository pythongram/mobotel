.class Lorg/telegram/messenger/MessagesStorage$56;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 3451
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$56;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/16 v9, 0x10

    const/4 v7, 0x1

    .line 3454
    const/4 v6, 0x0

    .line 3456
    .local v6, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :try_start_4
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v8, :cond_11

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v8, v8

    if-ge v8, v9, :cond_23

    :cond_11
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v8, :cond_23

    .line 3457
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->calcAuthKeyHash([B)[B

    move-result-object v9

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 3460
    :cond_23
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v8}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "UPDATE enc_chats SET data = ?, g = ?, authkey = ?, ttl = ?, layer = ?, seq_in = ?, seq_out = ?, use_count = ?, exchange_id = ?, key_date = ?, fprint = ?, fauthkey = ?, khash = ?, in_seq_no = ?, admin_id = ? WHERE uid = ?"

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    .line 3461
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v8}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->getObjectSize()I

    move-result v8

    invoke-direct {v0, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3462
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    if-eqz v8, :cond_147

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    array-length v8, v8

    :goto_47
    invoke-direct {v1, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3463
    .local v1, "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v8, :cond_14a

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v8, v8

    :goto_57
    invoke-direct {v2, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3464
    .local v2, "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    if-eqz v8, :cond_14d

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    array-length v8, v8

    :goto_67
    invoke-direct {v3, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3465
    .local v3, "data4":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v8, :cond_77

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v7, v7

    :cond_77
    invoke-direct {v4, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3466
    .local v4, "data5":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v7, v0}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3467
    const/4 v7, 0x1

    invoke-virtual {v6, v7, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3468
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    if-eqz v7, :cond_90

    .line 3469
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3471
    :cond_90
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v7, :cond_9d

    .line 3472
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-virtual {v2, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3474
    :cond_9d
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    if-eqz v7, :cond_aa

    .line 3475
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    invoke-virtual {v3, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3477
    :cond_aa
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v7, :cond_b7

    .line 3478
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    invoke-virtual {v4, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3480
    :cond_b7
    const/4 v7, 0x2

    invoke-virtual {v6, v7, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3481
    const/4 v7, 0x3

    invoke-virtual {v6, v7, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3482
    const/4 v7, 0x4

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3483
    const/4 v7, 0x5

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3484
    const/4 v7, 0x6

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3485
    const/4 v7, 0x7

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3486
    const/16 v7, 0x8

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    shl-int/lit8 v8, v8, 0x10

    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v9, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    or-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3487
    const/16 v7, 0x9

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 3488
    const/16 v7, 0xa

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3489
    const/16 v7, 0xb

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 3490
    const/16 v7, 0xc

    invoke-virtual {v6, v7, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3491
    const/16 v7, 0xd

    invoke-virtual {v6, v7, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3492
    const/16 v7, 0xe

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3493
    const/16 v7, 0xf

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3494
    const/16 v7, 0x10

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$56;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3496
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3497
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3498
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3499
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3500
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3501
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_141} :catch_150
    .catchall {:try_start_4 .. :try_end_141} :catchall_15a

    .line 3505
    if-eqz v6, :cond_146

    .line 3506
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 3509
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v1    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "data4":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "data5":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_146
    :goto_146
    return-void

    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_147
    move v8, v7

    .line 3462
    goto/16 :goto_47

    .restart local v1    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_14a
    move v8, v7

    .line 3463
    goto/16 :goto_57

    .restart local v2    # "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_14d
    move v8, v7

    .line 3464
    goto/16 :goto_67

    .line 3502
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v1    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_150
    move-exception v5

    .line 3503
    .local v5, "e":Ljava/lang/Exception;
    :try_start_151
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_154
    .catchall {:try_start_151 .. :try_end_154} :catchall_15a

    .line 3505
    if-eqz v6, :cond_146

    .line 3506
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_146

    .line 3505
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_15a
    move-exception v7

    if-eqz v6, :cond_160

    .line 3506
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_160
    throw v7
.end method

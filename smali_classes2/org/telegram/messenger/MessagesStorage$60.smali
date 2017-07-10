.class Lorg/telegram/messenger/MessagesStorage$60;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field final synthetic val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 3595
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$60;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v7, 0x1

    .line 3599
    :try_start_1
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v8, :cond_10

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v8, v8

    const/16 v9, 0x10

    if-ge v8, v9, :cond_22

    :cond_10
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v8, :cond_22

    .line 3600
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->calcAuthKeyHash([B)[B

    move-result-object v9

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 3602
    :cond_22
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v8}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "REPLACE INTO enc_chats VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    .line 3603
    .local v6, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v8}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->getObjectSize()I

    move-result v8

    invoke-direct {v0, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3604
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    if-eqz v8, :cond_1c3

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    array-length v8, v8

    :goto_46
    invoke-direct {v1, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3605
    .local v1, "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v8, :cond_1c6

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v8, v8

    :goto_56
    invoke-direct {v2, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3606
    .local v2, "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    if-eqz v8, :cond_1c9

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    array-length v8, v8

    :goto_66
    invoke-direct {v3, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3607
    .local v3, "data4":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v8, :cond_76

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v7, v7

    :cond_76
    invoke-direct {v4, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3609
    .local v4, "data5":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v7, v0}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3610
    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3611
    const/4 v7, 0x2

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3612
    const/4 v7, 0x3

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    # invokes: Lorg/telegram/messenger/MessagesStorage;->formatUserSearchName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    invoke-static {v8, v9}, Lorg/telegram/messenger/MessagesStorage;->access$1000(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 3613
    const/4 v7, 0x4

    invoke-virtual {v6, v7, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3614
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    if-eqz v7, :cond_ab

    .line 3615
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3617
    :cond_ab
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v7, :cond_b8

    .line 3618
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-virtual {v2, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3620
    :cond_b8
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    if-eqz v7, :cond_c5

    .line 3621
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    invoke-virtual {v3, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3623
    :cond_c5
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v7, :cond_d2

    .line 3624
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    invoke-virtual {v4, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 3626
    :cond_d2
    const/4 v7, 0x5

    invoke-virtual {v6, v7, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3627
    const/4 v7, 0x6

    invoke-virtual {v6, v7, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3628
    const/4 v7, 0x7

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3629
    const/16 v7, 0x8

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3630
    const/16 v7, 0x9

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3631
    const/16 v7, 0xa

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3632
    const/16 v7, 0xb

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    shl-int/lit8 v8, v8, 0x10

    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v9, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    or-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3633
    const/16 v7, 0xc

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 3634
    const/16 v7, 0xd

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3635
    const/16 v7, 0xe

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 3636
    const/16 v7, 0xf

    invoke-virtual {v6, v7, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3637
    const/16 v7, 0x10

    invoke-virtual {v6, v7, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3638
    const/16 v7, 0x11

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3639
    const/16 v7, 0x12

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3641
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3642
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 3643
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3644
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3645
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3646
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3647
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3648
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v7, :cond_1c2

    .line 3649
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$60;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v7}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    .line 3650
    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 3651
    const/4 v7, 0x2

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3652
    const/4 v7, 0x3

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3653
    const/4 v7, 0x4

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3654
    const/4 v7, 0x5

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3655
    const/4 v7, 0x6

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3656
    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3657
    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3658
    const/16 v7, 0x9

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3659
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3660
    const/16 v7, 0xb

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3661
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3662
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c2} :catch_1cc

    .line 3667
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v1    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "data4":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "data5":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_1c2
    :goto_1c2
    return-void

    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v6    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_1c3
    move v8, v7

    .line 3604
    goto/16 :goto_46

    .restart local v1    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_1c6
    move v8, v7

    .line 3605
    goto/16 :goto_56

    .restart local v2    # "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_1c9
    move v8, v7

    .line 3606
    goto/16 :goto_66

    .line 3664
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v1    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "data3":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_1cc
    move-exception v5

    .line 3665
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1c2
.end method

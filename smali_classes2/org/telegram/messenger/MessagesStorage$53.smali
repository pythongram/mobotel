.class Lorg/telegram/messenger/MessagesStorage$53;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
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
    .line 3376
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$53;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$53;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 3379
    const/4 v1, 0x0

    .line 3381
    .local v1, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$53;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "UPDATE enc_chats SET seq_in = ?, seq_out = ?, use_count = ?, in_seq_no = ? WHERE uid = ?"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 3382
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$53;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3383
    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$53;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3384
    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$53;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    shl-int/lit8 v3, v3, 0x10

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$53;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v4, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    or-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3385
    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$53;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3386
    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$53;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3387
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_45
    .catchall {:try_start_1 .. :try_end_3f} :catchall_4f

    .line 3391
    if-eqz v1, :cond_44

    .line 3392
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 3395
    :cond_44
    :goto_44
    return-void

    .line 3388
    :catch_45
    move-exception v0

    .line 3389
    .local v0, "e":Ljava/lang/Exception;
    :try_start_46
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4f

    .line 3391
    if-eqz v1, :cond_44

    .line 3392
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_44

    .line 3391
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4f
    move-exception v2

    if-eqz v1, :cond_55

    .line 3392
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_55
    throw v2
.end method

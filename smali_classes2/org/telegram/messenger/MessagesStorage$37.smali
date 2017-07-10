.class Lorg/telegram/messenger/MessagesStorage$37;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->isMigratedChat(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat_id:I

.field final synthetic val$result:[Z

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;I[ZLjava/util/concurrent/Semaphore;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2167
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$37;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$chat_id:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$result:[Z

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 2171
    :try_start_1
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$37;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT info FROM chat_settings_v2 WHERE uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$chat_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 2172
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    const/4 v3, 0x0

    .line 2173
    .local v3, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2174
    .local v4, "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 2175
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    .line 2176
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v1, :cond_43

    .line 2177
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Lorg/telegram/tgnet/TLRPC$ChatFull;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    .line 2178
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 2181
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_43
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2182
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$result:[Z

    const/4 v7, 0x0

    instance-of v8, v3, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v8, :cond_52

    iget v8, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    if-eqz v8, :cond_52

    const/4 v5, 0x1

    :cond_52
    aput-boolean v5, v6, v7

    .line 2183
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v5, :cond_5d

    .line 2184
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5d} :catch_67
    .catchall {:try_start_1 .. :try_end_5d} :catchall_75

    .line 2189
    :cond_5d
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v5, :cond_66

    .line 2190
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2193
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v3    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .end local v4    # "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_66
    :goto_66
    return-void

    .line 2186
    :catch_67
    move-exception v2

    .line 2187
    .local v2, "e":Ljava/lang/Exception;
    :try_start_68
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_75

    .line 2189
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v5, :cond_66

    .line 2190
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_66

    .line 2189
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_75
    move-exception v5

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v6, :cond_7f

    .line 2190
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_7f
    throw v5
.end method

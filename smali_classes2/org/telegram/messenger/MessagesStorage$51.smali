.class Lorg/telegram/messenger/MessagesStorage$51;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$result:Ljava/util/ArrayList;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/concurrent/Semaphore;)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 3291
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$51;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$51;->val$path:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$51;->val$type:I

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$51;->val$result:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesStorage$51;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 3295
    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$51;->val$path:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3296
    .local v4, "id":Ljava/lang/String;
    if-eqz v4, :cond_56

    .line 3297
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$51;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data FROM sent_files_v2 WHERE uid = \'%s\' AND type = %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lorg/telegram/messenger/MessagesStorage$51;->val$type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 3298
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 3299
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    .line 3300
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v1, :cond_53

    .line 3301
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v3

    .line 3302
    .local v3, "file":Lorg/telegram/tgnet/TLObject;
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3303
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v5, :cond_5c

    .line 3304
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$51;->val$result:Ljava/util/ArrayList;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v3    # "file":Lorg/telegram/tgnet/TLObject;
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3310
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_53
    :goto_53
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_6a
    .catchall {:try_start_0 .. :try_end_56} :catchall_74

    .line 3315
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_56
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$51;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3317
    .end local v4    # "id":Ljava/lang/String;
    :goto_5b
    return-void

    .line 3305
    .restart local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v3    # "file":Lorg/telegram/tgnet/TLObject;
    .restart local v4    # "id":Ljava/lang/String;
    :cond_5c
    :try_start_5c
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v5, :cond_53

    .line 3306
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$51;->val$result:Ljava/util/ArrayList;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    .end local v3    # "file":Lorg/telegram/tgnet/TLObject;
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_69} :catch_6a
    .catchall {:try_start_5c .. :try_end_69} :catchall_74

    goto :goto_53

    .line 3312
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "id":Ljava/lang/String;
    :catch_6a
    move-exception v2

    .line 3313
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6b
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_74

    .line 3315
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$51;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_5b

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_74
    move-exception v5

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$51;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    throw v5
.end method

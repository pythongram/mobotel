.class Lorg/telegram/messenger/MessagesStorage$33;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$currentDate:I

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$requestDelegate:Lorg/telegram/tgnet/RequestDelegate;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;ILjava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1936
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$33;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$currentDate:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$requestDelegate:Lorg/telegram/tgnet/RequestDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 1939
    const/4 v4, 0x0

    .line 1941
    .local v4, "result":Lorg/telegram/tgnet/TLObject;
    :try_start_2
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$33;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM botcache WHERE date < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$currentDate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1942
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$33;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data FROM botcache WHERE id = \'%s\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$key:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 1943
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_77
    .catchall {:try_start_2 .. :try_end_48} :catchall_81

    move-result v5

    if-eqz v5, :cond_63

    .line 1945
    const/4 v5, 0x0

    :try_start_4c
    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    .line 1946
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v2, :cond_63

    .line 1947
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v0

    .line 1948
    .local v0, "constructor":I
    sget v5, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->constructor:I

    if-ne v0, v5, :cond_6c

    .line 1949
    const/4 v5, 0x0

    invoke-static {v2, v0, v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    move-result-object v4

    .line 1953
    :goto_60
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_63} :catch_72
    .catchall {:try_start_4c .. :try_end_63} :catchall_81

    .line 1959
    .end local v0    # "constructor":I
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_63
    :goto_63
    :try_start_63
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_77
    .catchall {:try_start_63 .. :try_end_66} :catchall_81

    .line 1963
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$requestDelegate:Lorg/telegram/tgnet/RequestDelegate;

    invoke-interface {v5, v4, v11}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 1965
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_6b
    return-void

    .line 1951
    .restart local v0    # "constructor":I
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_6c
    const/4 v5, 0x0

    :try_start_6d
    invoke-static {v2, v0, v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_72
    .catchall {:try_start_6d .. :try_end_70} :catchall_81

    move-result-object v4

    goto :goto_60

    .line 1955
    .end local v0    # "constructor":I
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_72
    move-exception v3

    .line 1956
    .local v3, "e":Ljava/lang/Exception;
    :try_start_73
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77
    .catchall {:try_start_73 .. :try_end_76} :catchall_81

    goto :goto_63

    .line 1960
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_77
    move-exception v3

    .line 1961
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_78
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_81

    .line 1963
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$requestDelegate:Lorg/telegram/tgnet/RequestDelegate;

    invoke-interface {v5, v4, v11}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_6b

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_81
    move-exception v5

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$33;->val$requestDelegate:Lorg/telegram/tgnet/RequestDelegate;

    invoke-interface {v6, v4, v11}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    throw v5
.end method

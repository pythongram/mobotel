.class Lorg/telegram/messenger/MessagesStorage$31;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateChannelUsers(ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$channel_id:I

.field final synthetic val$participants:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/ArrayList;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1868
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$31;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$31;->val$channel_id:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$31;->val$participants:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 1872
    :try_start_0
    iget v8, p0, Lorg/telegram/messenger/MessagesStorage$31;->val$channel_id:I

    neg-int v8, v8

    int-to-long v4, v8

    .line 1873
    .local v4, "did":J
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$31;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v8}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DELETE FROM channel_users_v2 WHERE did = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1874
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$31;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v8}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 1875
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$31;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v8}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "REPLACE INTO channel_users_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 1877
    .local v7, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v2, v8

    .line 1878
    .local v2, "date":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_46
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$31;->val$participants:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_82

    .line 1879
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$31;->val$participants:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1880
    .local v6, "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1881
    const/4 v8, 0x1

    invoke-virtual {v7, v8, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1882
    const/4 v8, 0x2

    iget v9, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1883
    const/4 v8, 0x3

    invoke-virtual {v7, v8, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1884
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v6}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->getObjectSize()I

    move-result v8

    invoke-direct {v1, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1885
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v6, v1}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1886
    const/4 v8, 0x4

    invoke-virtual {v7, v8, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 1887
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1888
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1889
    add-int/lit8 v2, v2, -0x1

    .line 1878
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 1891
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_82
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1892
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$31;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v8}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 1893
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$31;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget v9, p0, Lorg/telegram/messenger/MessagesStorage$31;->val$channel_id:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_98} :catch_99

    .line 1897
    .end local v0    # "a":I
    .end local v2    # "date":I
    .end local v4    # "did":J
    .end local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_98
    return-void

    .line 1894
    :catch_99
    move-exception v3

    .line 1895
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_98
.end method

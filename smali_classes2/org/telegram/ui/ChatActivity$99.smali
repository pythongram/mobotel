.class Lorg/telegram/ui/ChatActivity$99;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->DM_AddMessage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$messages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 11317
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$99;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$99;->val$messages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 11321
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 11322
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "REPLACE INTO turbo_idm VALUES(?, ?, ?, ?)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    .line 11323
    .local v4, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1a
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$99;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5f

    .line 11324
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$99;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 11326
    .local v3, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 11327
    const/4 v5, 0x1

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 11328
    const/4 v5, 0x2

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 11329
    const/4 v5, 0x3

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 11330
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v5

    invoke-direct {v1, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 11331
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v3, v1}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 11332
    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 11333
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 11335
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 11323
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 11337
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_5f
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 11338
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e

    .line 11342
    .end local v0    # "a":I
    .end local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_6d
    return-void

    .line 11339
    :catch_6e
    move-exception v2

    .line 11340
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "tmessages"

    invoke-static {v5, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6d
.end method

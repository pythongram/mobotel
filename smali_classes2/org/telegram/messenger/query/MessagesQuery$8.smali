.class final Lorg/telegram/messenger/query/MessagesQuery$8;
.super Ljava/lang/Object;
.source "MessagesQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesQuery;->saveReplyMessages(Ljava/util/HashMap;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$replyMessageOwners:Ljava/util/HashMap;

.field final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 3

    .prologue
    .line 384
    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesQuery$8;->val$result:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/messenger/query/MessagesQuery$8;->val$replyMessageOwners:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 388
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 389
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    const-string v11, "UPDATE messages SET replydata = ? WHERE mid = ?"

    invoke-virtual {v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    .line 390
    .local v9, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1a
    iget-object v10, p0, Lorg/telegram/messenger/query/MessagesQuery$8;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_82

    .line 391
    iget-object v10, p0, Lorg/telegram/messenger/query/MessagesQuery$8;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    .line 392
    .local v4, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v10, p0, Lorg/telegram/messenger/query/MessagesQuery$8;->val$replyMessageOwners:Ljava/util/HashMap;

    iget v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 393
    .local v8, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz v8, :cond_7f

    .line 394
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v10

    invoke-direct {v2, v10}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 395
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v4, v2}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 396
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_47
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_7c

    .line 397
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 398
    .local v5, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 399
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    int-to-long v6, v10

    .line 400
    .local v6, "messageId":J
    iget-object v10, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v10, :cond_6e

    .line 401
    iget-object v10, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v10, v10

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    or-long/2addr v6, v10

    .line 403
    :cond_6e
    const/4 v10, 0x1

    invoke-virtual {v9, v10, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 404
    const/4 v10, 0x2

    invoke-virtual {v9, v10, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 405
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 407
    .end local v5    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v6    # "messageId":J
    :cond_7c
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 390
    .end local v1    # "b":I
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 410
    .end local v4    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v8    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_82
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 411
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_90} :catch_91

    .line 415
    .end local v0    # "a":I
    .end local v9    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_90
    return-void

    .line 412
    :catch_91
    move-exception v3

    .line 413
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_90
.end method

.class final Lorg/telegram/messenger/query/MessagesQuery$7;
.super Ljava/lang/Object;
.source "MessagesQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesQuery;->loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$channelIdFinal:I

.field final synthetic val$dialogId:J

.field final synthetic val$replyMessageOwners:Ljava/util/HashMap;

.field final synthetic val$replyMessages:Ljava/util/ArrayList;

.field final synthetic val$stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;JLjava/util/ArrayList;Ljava/util/HashMap;I)V
    .registers 7

    .prologue
    .line 307
    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$stringBuilder:Ljava/lang/StringBuilder;

    iput-wide p2, p0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$dialogId:J

    iput-object p4, p0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$replyMessages:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$replyMessageOwners:Ljava/util/HashMap;

    iput p6, p0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$channelIdFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 311
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v5, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v15, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v9, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data, mid, date FROM messages WHERE mid IN(%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$stringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v8, v16

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v10

    .line 318
    .local v10, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_41
    :goto_41
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v3

    if-eqz v3, :cond_88

    .line 319
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v11

    .line 320
    .local v11, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v11, :cond_41

    .line 321
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v11, v3, v6}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v13

    .line 322
    .local v13, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 323
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    iput v3, v13, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 324
    const/4 v3, 0x2

    invoke-virtual {v10, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    iput v3, v13, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 325
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$dialogId:J

    iput-wide v6, v13, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 326
    invoke-static {v13, v15, v9}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 327
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$replyMessages:Ljava/util/ArrayList;

    iget v6, v13, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_82} :catch_83

    goto :goto_41

    .line 375
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v5    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v9    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v11    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v13    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v15    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_83
    move-exception v12

    .line 376
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 378
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_87
    :goto_87
    return-void

    .line 331
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .restart local v5    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .restart local v9    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v15    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_88
    :try_start_88
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 333
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9e

    .line 334
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    const-string v6, ","

    invoke-static {v6, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 336
    :cond_9e
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b1

    .line 337
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    const-string v6, ","

    invoke-static {v6, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 339
    :cond_b1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$replyMessageOwners:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$dialogId:J

    const/4 v8, 0x1

    # invokes: Lorg/telegram/messenger/query/MessagesQuery;->broadcastReplyMessages(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V
    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/query/MessagesQuery;->access$300(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$replyMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_87

    .line 342
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$channelIdFinal:I

    if-eqz v3, :cond_f1

    .line 343
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 344
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$channelIdFinal:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v3

    iput-object v3, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$replyMessages:Ljava/util/ArrayList;

    iput-object v3, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    .line 346
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v6, Lorg/telegram/messenger/query/MessagesQuery$7$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/telegram/messenger/query/MessagesQuery$7$1;-><init>(Lorg/telegram/messenger/query/MessagesQuery$7;)V

    invoke-virtual {v3, v14, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_87

    .line 359
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
    :cond_f1
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;-><init>()V

    .line 360
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/query/MessagesQuery$7;->val$replyMessages:Ljava/util/ArrayList;

    iput-object v3, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;->id:Ljava/util/ArrayList;

    .line 361
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v6, Lorg/telegram/messenger/query/MessagesQuery$7$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/telegram/messenger/query/MessagesQuery$7$2;-><init>(Lorg/telegram/messenger/query/MessagesQuery$7;)V

    invoke-virtual {v3, v14, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_10a} :catch_83

    goto/16 :goto_87
.end method

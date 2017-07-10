.class Lorg/telegram/messenger/MessagesStorage$38;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$byChannelUsers:Z

.field final synthetic val$chat_id:I

.field final synthetic val$force:Z

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/concurrent/Semaphore;ZZ)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2204
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$38;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$38;->val$chat_id:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$38;->val$semaphore:Ljava/util/concurrent/Semaphore;

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesStorage$38;->val$force:Z

    iput-boolean p5, p0, Lorg/telegram/messenger/MessagesStorage$38;->val$byChannelUsers:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 2207
    const/4 v8, 0x0

    .line 2208
    .local v8, "pinnedMessageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v3, 0x0

    .line 2209
    .local v3, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2211
    .local v4, "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$38;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT info, pinned FROM chat_settings_v2 WHERE uid = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$chat_id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v13

    .line 2212
    .local v13, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 2213
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v14

    .line 2214
    .local v14, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v14, :cond_4e

    .line 2215
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v14, v1, v2}, Lorg/telegram/tgnet/TLRPC$ChatFull;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    .line 2216
    invoke-virtual {v14}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 2217
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    .line 2220
    .end local v14    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_4e
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2222
    instance-of v1, v3, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v1, :cond_d9

    .line 2223
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 2224
    .local v18, "usersToLoad":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_5b
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_86

    .line 2225
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2226
    .local v11, "c":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_7c

    .line 2227
    const-string v1, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    :cond_7c
    iget v1, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2224
    add-int/lit8 v9, v9, 0x1

    goto :goto_5b

    .line 2231
    .end local v11    # "c":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_86
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_97

    .line 2232
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$38;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2281
    .end local v9    # "a":I
    .end local v18    # "usersToLoad":Ljava/lang/StringBuilder;
    :cond_97
    :goto_97
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v1, :cond_a4

    .line 2282
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2284
    :cond_a4
    instance-of v1, v3, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v1, :cond_b7

    iget v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    if-eqz v1, :cond_b7

    .line 2285
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$chat_id:I

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lorg/telegram/messenger/query/MessagesQuery;->loadPinnedMessage(IIZ)Lorg/telegram/messenger/MessageObject;
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b6} :catch_18e
    .catchall {:try_start_7 .. :try_end_b6} :catchall_1f8

    move-result-object v8

    .line 2290
    :cond_b7
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$chat_id:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$force:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$byChannelUsers:Z

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->processChatInfo(ILorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/ArrayList;ZZZLorg/telegram/messenger/MessageObject;)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v1, :cond_d8

    .line 2292
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2295
    .end local v13    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_d8
    :goto_d8
    return-void

    .line 2234
    .restart local v13    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_d9
    :try_start_d9
    instance-of v1, v3, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v1, :cond_97

    .line 2235
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$38;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT us.data, us.status, cu.data, cu.date FROM channel_users_v2 as cu LEFT JOIN users as us ON us.uid = cu.uid WHERE cu.did = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$chat_id:I

    neg-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ORDER BY cu.date DESC"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v13

    .line 2236
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 2237
    :cond_111
    :goto_111
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_114} :catch_18e
    .catchall {:try_start_d9 .. :try_end_114} :catchall_1f8

    move-result v1

    if-eqz v1, :cond_1b5

    .line 2239
    const/16 v17, 0x0

    .line 2240
    .local v17, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v16, 0x0

    .line 2241
    .local v16, "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    const/4 v1, 0x0

    :try_start_11c
    invoke-virtual {v13, v1}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v14

    .line 2242
    .restart local v14    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v14, :cond_12f

    .line 2243
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v14, v1, v2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v17

    .line 2244
    invoke-virtual {v14}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 2246
    :cond_12f
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v14

    .line 2247
    if-eqz v14, :cond_143

    .line 2248
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v14, v1, v2}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object v16

    .line 2249
    invoke-virtual {v14}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 2251
    :cond_143
    if-eqz v17, :cond_111

    if-eqz v16, :cond_111

    .line 2252
    move-object/from16 v0, v17

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_158

    .line 2253
    move-object/from16 v0, v17

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 2255
    :cond_158
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2256
    const/4 v1, 0x3

    invoke-virtual {v13, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1

    move-object/from16 v0, v16

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 2257
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;-><init>()V

    .line 2258
    .local v12, "chatChannelParticipant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    move-object/from16 v0, v16

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    iput v1, v12, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->user_id:I

    .line 2259
    move-object/from16 v0, v16

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    iput v1, v12, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->date:I

    .line 2260
    move-object/from16 v0, v16

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    iput v1, v12, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->inviter_id:I

    .line 2261
    move-object/from16 v0, v16

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2262
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_188} :catch_189
    .catchall {:try_start_11c .. :try_end_188} :catchall_1f8

    goto :goto_111

    .line 2264
    .end local v12    # "chatChannelParticipant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    .end local v14    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_189
    move-exception v15

    .line 2265
    .local v15, "e":Ljava/lang/Exception;
    :try_start_18a
    invoke-static {v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_18d} :catch_18e
    .catchall {:try_start_18a .. :try_end_18d} :catchall_1f8

    goto :goto_111

    .line 2287
    .end local v13    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v17    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_18e
    move-exception v15

    .line 2288
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_18f
    invoke-static {v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_192
    .catchall {:try_start_18f .. :try_end_192} :catchall_1f8

    .line 2290
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$chat_id:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$force:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$byChannelUsers:Z

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->processChatInfo(ILorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/ArrayList;ZZZLorg/telegram/messenger/MessageObject;)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v1, :cond_d8

    .line 2292
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_d8

    .line 2268
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v13    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_1b5
    :try_start_1b5
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2269
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 2270
    .restart local v18    # "usersToLoad":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .restart local v9    # "a":I
    :goto_1be
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_1e5

    .line 2271
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$BotInfo;

    .line 2272
    .local v10, "botInfo":Lorg/telegram/tgnet/TLRPC$BotInfo;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1db

    .line 2273
    const-string v1, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2275
    :cond_1db
    iget v1, v10, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2270
    add-int/lit8 v9, v9, 0x1

    goto :goto_1be

    .line 2277
    .end local v10    # "botInfo":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_1e5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_97

    .line 2278
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$38;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1f6} :catch_18e
    .catchall {:try_start_1b5 .. :try_end_1f6} :catchall_1f8

    goto/16 :goto_97

    .line 2290
    .end local v9    # "a":I
    .end local v13    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v18    # "usersToLoad":Ljava/lang/StringBuilder;
    :catchall_1f8
    move-exception v1

    move-object/from16 v19, v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$chat_id:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$force:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$byChannelUsers:Z

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->processChatInfo(ILorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/ArrayList;ZZZLorg/telegram/messenger/MessageObject;)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v1, :cond_21c

    .line 2292
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesStorage$38;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_21c
    throw v19
.end method

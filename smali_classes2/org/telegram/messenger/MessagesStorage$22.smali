.class Lorg/telegram/messenger/MessagesStorage$22;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->deleteDialog(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$did:J

.field final synthetic val$messagesOnly:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;IJ)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1390
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$22;->val$messagesOnly:I

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 29

    .prologue
    .line 1394
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$messagesOnly:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_52

    .line 1395
    const/4 v13, -0x1

    .line 1396
    .local v13, "lastMid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SELECT last_mid FROM dialogs WHERE did = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 1397
    .local v6, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v24

    if-eqz v24, :cond_4c

    .line 1398
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 1400
    :cond_4c
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1401
    if-eqz v13, :cond_52

    .line 1520
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v13    # "lastMid":I
    :goto_51
    return-void

    .line 1405
    :cond_52
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    if-eqz v24, :cond_6d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$messagesOnly:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12c

    .line 1406
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SELECT data FROM messages WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 1407
    .restart local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a1} :catch_3cf

    .line 1409
    .local v11, "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_a1
    :goto_a1
    :try_start_a1
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v24

    if-eqz v24, :cond_118

    .line 1410
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 1411
    .local v8, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_a1

    .line 1412
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v24

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v19

    .line 1413
    .local v19, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1414
    if-eqz v19, :cond_a1

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a1

    .line 1415
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v24, v0

    if-eqz v24, :cond_3d5

    .line 1416
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_f4
    :goto_f4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1417
    .local v21, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v10

    .line 1418
    .local v10, "file":Ljava/io/File;
    if-eqz v10, :cond_f4

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_f4

    .line 1419
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_113} :catch_114

    goto :goto_f4

    .line 1435
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "file":Ljava/io/File;
    .end local v19    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v21    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :catch_114
    move-exception v9

    .line 1436
    .local v9, "e":Ljava/lang/Exception;
    :try_start_115
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1438
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_118
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1439
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$messagesOnly:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Lorg/telegram/messenger/FileLoader;->deleteFiles(Ljava/util/ArrayList;I)V

    .line 1442
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v11    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_12c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$messagesOnly:I

    move/from16 v24, v0

    if-eqz v24, :cond_142

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$messagesOnly:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_459

    .line 1443
    :cond_142
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM dialogs WHERE did = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM chat_settings_v2 WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM chat_pinned WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM channel_users_v2 WHERE did = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM search_recent WHERE did = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1448
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v18, v0

    .line 1449
    .local v18, "lower_id":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v24, v0

    const/16 v26, 0x20

    shr-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v12, v0

    .line 1450
    .local v12, "high_id":I
    if-eqz v18, :cond_42d

    .line 1451
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_429

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM chats WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1503
    .end local v12    # "high_id":I
    .end local v18    # "lower_id":I
    :cond_274
    :goto_274
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "UPDATE dialogs SET unread_count = 0, unread_count_i = 0 WHERE did = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM messages WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM bot_keyboard WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM media_counts_v2 WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM media_v2 WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM messages_holes WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM media_holes_v2 WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1510
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lorg/telegram/messenger/query/BotQuery;->clearBotKeyboard(JLjava/util/ArrayList;)V

    .line 1511
    new-instance v24, Lorg/telegram/messenger/MessagesStorage$22$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesStorage$22$1;-><init>(Lorg/telegram/messenger/MessagesStorage$22;)V

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_3cd
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_3cd} :catch_3cf

    goto/16 :goto_51

    .line 1517
    :catch_3cf
    move-exception v9

    .line 1518
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1422
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v11    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v19    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_3d5
    :try_start_3d5
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v24, v0

    if-eqz v24, :cond_a1

    .line 1423
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v10

    .line 1424
    .restart local v10    # "file":Ljava/io/File;
    if-eqz v10, :cond_402

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_402

    .line 1425
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    :cond_402
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v10

    .line 1428
    if-eqz v10, :cond_a1

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_a1

    .line 1429
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_427
    .catch Ljava/lang/Exception; {:try_start_3d5 .. :try_end_427} :catch_114

    goto/16 :goto_a1

    .line 1453
    .end local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v19    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v12    # "high_id":I
    .restart local v18    # "lower_id":I
    :cond_429
    if-gez v18, :cond_274

    goto/16 :goto_274

    .line 1457
    :cond_42d
    :try_start_42d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM enc_chats WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_274

    .line 1460
    .end local v12    # "high_id":I
    .end local v18    # "lower_id":I
    :cond_459
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$messagesOnly:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_274

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SELECT last_mid_i, last_mid FROM dialogs WHERE did = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    .line 1462
    .restart local v6    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    const/16 v20, -0x1

    .line 1463
    .local v20, "messageId":I
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v24

    if-eqz v24, :cond_6aa

    .line 1464
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v16

    .line 1465
    .local v16, "last_mid_i":J
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v14

    .line 1466
    .local v14, "last_mid":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SELECT data FROM messages WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " AND mid IN ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    :try_end_4fc
    .catch Ljava/lang/Exception; {:try_start_42d .. :try_end_4fc} :catch_3cf

    move-result-object v7

    .line 1468
    .local v7, "cursor2":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_4fd
    :goto_4fd
    :try_start_4fd
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v24

    if-eqz v24, :cond_52f

    .line 1469
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 1470
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_4fd

    .line 1471
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v24

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v19

    .line 1472
    .restart local v19    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1473
    if-eqz v19, :cond_4fd

    .line 1474
    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v20, v0
    :try_end_52a
    .catch Ljava/lang/Exception; {:try_start_4fd .. :try_end_52a} :catch_52b

    goto :goto_4fd

    .line 1478
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v19    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_52b
    move-exception v9

    .line 1479
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_52c
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1481
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_52f
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM messages WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " AND mid != "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " AND mid != "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM messages_holes WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM bot_keyboard WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM media_counts_v2 WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM media_v2 WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DELETE FROM media_holes_v2 WHERE uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1489
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lorg/telegram/messenger/query/BotQuery;->clearBotKeyboard(JLjava/util/ArrayList;)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    const-string v25, "REPLACE INTO messages_holes VALUES(?, ?, ?)"

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v22

    .line 1492
    .local v22, "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v24, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v24

    const-string v25, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v23

    .line 1493
    .local v23, "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/16 v24, -0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_6a4

    .line 1494
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$22;->val$did:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->createFirstHoles(JLorg/telegram/SQLite/SQLitePreparedStatement;Lorg/telegram/SQLite/SQLitePreparedStatement;I)V

    .line 1496
    :cond_6a4
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1497
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1499
    .end local v7    # "cursor2":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v14    # "last_mid":J
    .end local v16    # "last_mid_i":J
    .end local v22    # "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v23    # "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_6aa
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_6ad
    .catch Ljava/lang/Exception; {:try_start_52c .. :try_end_6ad} :catch_3cf

    goto/16 :goto_51
.end method

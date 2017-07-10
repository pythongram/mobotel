.class Lorg/telegram/ui/CacheControlActivity$4$2$1;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity$4$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/CacheControlActivity$4$2;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity$4$2;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .registers 3
    .param p1, "this$2"    # Lorg/telegram/ui/CacheControlActivity$4$2;

    .prologue
    .line 350
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$4$2$1;->this$2:Lorg/telegram/ui/CacheControlActivity$4$2;

    iput-object p2, p0, Lorg/telegram/ui/CacheControlActivity$4$2$1;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    .prologue
    .line 354
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    .line 355
    .local v10, "database":Lorg/telegram/SQLite/SQLiteDatabase;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v11, "dialogsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v27, "SELECT did FROM dialogs WHERE 1"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 357
    .local v7, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v16, "ids":Ljava/lang/StringBuilder;
    :cond_24
    :goto_24
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v27

    if-eqz v27, :cond_5f

    .line 359
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v12

    .line 360
    .local v12, "did":J
    long-to-int v0, v12

    move/from16 v17, v0

    .line 361
    .local v17, "lower_id":I
    const/16 v27, 0x20

    shr-long v28, v12, v27

    move-wide/from16 v0, v28

    long-to-int v15, v0

    .line 362
    .local v15, "high_id":I
    if-eqz v17, :cond_24

    const/16 v27, 0x1

    move/from16 v0, v27

    if-eq v15, v0, :cond_24

    .line 363
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e
    .catchall {:try_start_0 .. :try_end_4d} :catchall_291

    goto :goto_24

    .line 423
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v10    # "database":Lorg/telegram/SQLite/SQLiteDatabase;
    .end local v11    # "dialogsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v12    # "did":J
    .end local v15    # "high_id":I
    .end local v16    # "ids":Ljava/lang/StringBuilder;
    .end local v17    # "lower_id":I
    :catch_4e
    move-exception v14

    .line 424
    .local v14, "e":Ljava/lang/Exception;
    :try_start_4f
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_291

    .line 426
    new-instance v27, Lorg/telegram/ui/CacheControlActivity$4$2$1$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/CacheControlActivity$4$2$1$1;-><init>(Lorg/telegram/ui/CacheControlActivity$4$2$1;)V

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 442
    .end local v14    # "e":Ljava/lang/Exception;
    :goto_5e
    return-void

    .line 366
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v10    # "database":Lorg/telegram/SQLite/SQLiteDatabase;
    .restart local v11    # "dialogsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v16    # "ids":Ljava/lang/StringBuilder;
    :cond_5f
    :try_start_5f
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 368
    const-string v27, "REPLACE INTO messages_holes VALUES(?, ?, ?)"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v25

    .line 369
    .local v25, "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const-string v27, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v26

    .line 371
    .local v26, "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 372
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_76
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v6, v0, :cond_29f

    .line 373
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 374
    .local v12, "did":Ljava/lang/Long;
    const/16 v24, 0x0

    .line 375
    .local v24, "messagesCount":I
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SELECT COUNT(mid) FROM messages WHERE uid = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 376
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v27

    if-eqz v27, :cond_b9

    .line 377
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v24

    .line 379
    :cond_b9
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 380
    const/16 v27, 0x2

    move/from16 v0, v24

    move/from16 v1, v27

    if-gt v0, v1, :cond_c7

    .line 372
    :goto_c4
    add-int/lit8 v6, v6, 0x1

    goto :goto_76

    .line 384
    :cond_c7
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SELECT last_mid_i, last_mid FROM dialogs WHERE did = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 385
    const/16 v23, -0x1

    .line 386
    .local v23, "messageId":I
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v27

    if-eqz v27, :cond_28c

    .line 387
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v20

    .line 388
    .local v20, "last_mid_i":J
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v18

    .line 389
    .local v18, "last_mid":J
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SELECT data FROM messages WHERE uid = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " AND mid IN ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_14a} :catch_4e
    .catchall {:try_start_5f .. :try_end_14a} :catchall_291

    move-result-object v8

    .line 391
    .local v8, "cursor2":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_14b
    :goto_14b
    :try_start_14b
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v27

    if-eqz v27, :cond_17d

    .line 392
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v9

    .line 393
    .local v9, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v9, :cond_14b

    .line 394
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v27

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v9, v0, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v22

    .line 395
    .local v22, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 396
    if-eqz v22, :cond_14b

    .line 397
    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v23, v0
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_178} :catch_179
    .catchall {:try_start_14b .. :try_end_178} :catchall_291

    goto :goto_14b

    .line 401
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_179
    move-exception v14

    .line 402
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_17a
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 404
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_17d
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 406
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "DELETE FROM messages WHERE uid = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " AND mid != "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " AND mid != "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 407
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "DELETE FROM messages_holes WHERE uid = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 408
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "DELETE FROM bot_keyboard WHERE uid = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 409
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "DELETE FROM media_counts_v2 WHERE uid = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 410
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "DELETE FROM media_v2 WHERE uid = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 411
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "DELETE FROM media_holes_v2 WHERE uid = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 412
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const/16 v27, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/BotQuery;->clearBotKeyboard(JLjava/util/ArrayList;)V

    .line 413
    const/16 v27, -0x1

    move/from16 v0, v23

    move/from16 v1, v27

    if-eq v0, v1, :cond_28c

    .line 414
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->createFirstHoles(JLorg/telegram/SQLite/SQLitePreparedStatement;Lorg/telegram/SQLite/SQLitePreparedStatement;I)V

    .line 417
    .end local v8    # "cursor2":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v18    # "last_mid":J
    .end local v20    # "last_mid_i":J
    :cond_28c
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_28f
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_28f} :catch_4e
    .catchall {:try_start_17a .. :try_end_28f} :catchall_291

    goto/16 :goto_c4

    .line 426
    .end local v6    # "a":I
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v10    # "database":Lorg/telegram/SQLite/SQLiteDatabase;
    .end local v11    # "dialogsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v12    # "did":Ljava/lang/Long;
    .end local v16    # "ids":Ljava/lang/StringBuilder;
    .end local v23    # "messageId":I
    .end local v24    # "messagesCount":I
    .end local v25    # "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v26    # "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catchall_291
    move-exception v27

    new-instance v28, Lorg/telegram/ui/CacheControlActivity$4$2$1$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/CacheControlActivity$4$2$1$1;-><init>(Lorg/telegram/ui/CacheControlActivity$4$2$1;)V

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    throw v27

    .line 419
    .restart local v6    # "a":I
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v10    # "database":Lorg/telegram/SQLite/SQLiteDatabase;
    .restart local v11    # "dialogsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v16    # "ids":Ljava/lang/StringBuilder;
    .restart local v25    # "state5":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v26    # "state6":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_29f
    :try_start_29f
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 420
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 421
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 422
    const-string v27, "VACUUM"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_2b7
    .catch Ljava/lang/Exception; {:try_start_29f .. :try_end_2b7} :catch_4e
    .catchall {:try_start_29f .. :try_end_2b7} :catchall_291

    .line 426
    new-instance v27, Lorg/telegram/ui/CacheControlActivity$4$2$1$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/CacheControlActivity$4$2$1$1;-><init>(Lorg/telegram/ui/CacheControlActivity$4$2$1;)V

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5e
.end method

.class final Lorg/telegram/messenger/query/StickersQuery$8;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$date:I

.field final synthetic val$documents:Ljava/util/ArrayList;

.field final synthetic val$gif:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ZLjava/util/ArrayList;II)V
    .registers 5

    .prologue
    .line 385
    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$gif:Z

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$documents:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$type:I

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$date:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 389
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    .line 390
    .local v3, "database":Lorg/telegram/SQLite/SQLiteDatabase;
    iget-boolean v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$gif:Z

    if-eqz v8, :cond_71

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v6, v8, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    .line 391
    .local v6, "maxCount":I
    :goto_12
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 392
    const-string v8, "REPLACE INTO web_recent_v3 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v3, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 393
    .local v7, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    iget-object v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 394
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_22
    if-ge v0, v1, :cond_26

    .line 395
    if-ne v0, v6, :cond_78

    .line 417
    :cond_26
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 418
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 419
    iget-object v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, v6, :cond_fd

    .line 420
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 421
    move v0, v6

    :goto_38
    iget-object v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_fa

    .line 422
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DELETE FROM web_recent_v3 WHERE id = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 390
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v6    # "maxCount":I
    .end local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_71
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v6, v8, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    goto :goto_12

    .line 398
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v6    # "maxCount":I
    .restart local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_78
    iget-object v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    .line 399
    .local v4, "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 400
    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 401
    const/4 v9, 0x2

    iget-boolean v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$gif:Z

    if-eqz v8, :cond_ef

    const/4 v8, 0x2

    :goto_a2
    invoke-virtual {v7, v9, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 402
    const/4 v8, 0x3

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 403
    const/4 v8, 0x4

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 404
    const/4 v8, 0x5

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 405
    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 406
    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 407
    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 408
    const/16 v9, 0x9

    iget v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$date:I

    if-eqz v8, :cond_f7

    iget v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$date:I

    :goto_cf
    invoke-virtual {v7, v9, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 409
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLRPC$Document;->getObjectSize()I

    move-result v8

    invoke-direct {v2, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 410
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v4, v2}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 411
    const/16 v8, 0xa

    invoke-virtual {v7, v8, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 412
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 413
    if-eqz v2, :cond_eb

    .line 414
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 394
    :cond_eb
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_22

    .line 401
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_ef
    iget v8, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$type:I

    if-nez v8, :cond_f5

    const/4 v8, 0x3

    goto :goto_a2

    :cond_f5
    const/4 v8, 0x4

    goto :goto_a2

    .line 408
    :cond_f7
    sub-int v8, v1, v0

    goto :goto_cf

    .line 424
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_fa
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_fd} :catch_fe

    .line 429
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "database":Lorg/telegram/SQLite/SQLiteDatabase;
    .end local v6    # "maxCount":I
    .end local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_fd
    :goto_fd
    return-void

    .line 426
    :catch_fe
    move-exception v5

    .line 427
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_fd
.end method

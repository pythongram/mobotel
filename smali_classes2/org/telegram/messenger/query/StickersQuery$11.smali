.class final Lorg/telegram/messenger/query/StickersQuery$11;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->loadFeaturesStickers(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    .line 527
    const/4 v7, 0x0

    .line 528
    .local v7, "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v10, "unread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 530
    .local v4, "date":I
    const/4 v6, 0x0

    .line 531
    .local v6, "hash":I
    const/4 v2, 0x0

    .line 533
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :try_start_a
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "SELECT data, unread, date, hash FROM stickers_featured WHERE 1"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 534
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    if-eqz v11, :cond_73

    .line 535
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    .line 536
    .local v3, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v3, :cond_49

    .line 537
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2d} :catch_7c
    .catchall {:try_start_a .. :try_end_2d} :catchall_86

    .line 538
    .end local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    .local v8, "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    const/4 v11, 0x0

    :try_start_2e
    invoke-virtual {v3, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    .line 539
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_33
    if-ge v0, v1, :cond_45

    .line 540
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v3, v11, v12}, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v9

    .line 541
    .local v9, "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 543
    .end local v9    # "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_45
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_48} :catch_90
    .catchall {:try_start_2e .. :try_end_48} :catchall_8d

    move-object v7, v8

    .line 545
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    .restart local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    :cond_49
    const/4 v11, 0x1

    :try_start_4a
    invoke-virtual {v2, v11}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    .line 546
    if-eqz v3, :cond_6a

    .line 547
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    .line 548
    .restart local v1    # "count":I
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_56
    if-ge v0, v1, :cond_67

    .line 549
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 551
    :cond_67
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 553
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_6a
    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    .line 554
    # invokes: Lorg/telegram/messenger/query/StickersQuery;->calcFeaturedStickersHash(Ljava/util/ArrayList;)I
    invoke-static {v7}, Lorg/telegram/messenger/query/StickersQuery;->access$700(Ljava/util/ArrayList;)I
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_72} :catch_7c
    .catchall {:try_start_4a .. :try_end_72} :catchall_86

    move-result v6

    .line 559
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_73
    if-eqz v2, :cond_78

    .line 560
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 563
    :cond_78
    :goto_78
    # invokes: Lorg/telegram/messenger/query/StickersQuery;->processLoadedFeaturedStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V
    invoke-static {v7, v10, v14, v4, v6}, Lorg/telegram/messenger/query/StickersQuery;->access$800(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V

    .line 564
    return-void

    .line 556
    :catch_7c
    move-exception v5

    .line 557
    .local v5, "e":Ljava/lang/Throwable;
    :goto_7d
    :try_start_7d
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_86

    .line 559
    if-eqz v2, :cond_78

    .line 560
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_78

    .line 559
    .end local v5    # "e":Ljava/lang/Throwable;
    :catchall_86
    move-exception v11

    :goto_87
    if-eqz v2, :cond_8c

    .line 560
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_8c
    throw v11

    .line 559
    .end local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    .restart local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    :catchall_8d
    move-exception v11

    move-object v7, v8

    .end local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    .restart local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    goto :goto_87

    .line 556
    .end local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    .restart local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    :catch_90
    move-exception v5

    move-object v7, v8

    .end local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    .restart local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    goto :goto_7d
.end method

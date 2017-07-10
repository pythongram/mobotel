.class final Lorg/telegram/messenger/query/StickersQuery$15;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$date:I

.field final synthetic val$hash:I

.field final synthetic val$stickersFinal:Ljava/util/ArrayList;

.field final synthetic val$unreadStickers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 5

    .prologue
    .line 656
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$date:I

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$hash:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 660
    :try_start_0
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    if-eqz v6, :cond_ad

    .line 661
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "REPLACE INTO stickers_featured VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    .line 662
    .local v5, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 663
    const/4 v4, 0x4

    .line 664
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_17
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2f

    .line 665
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {v6}, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->getObjectSize()I

    move-result v6

    add-int/2addr v4, v6

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 667
    :cond_2f
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-direct {v1, v4}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 668
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v2, v6}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 669
    .local v2, "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 670
    const/4 v0, 0x0

    :goto_4d
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_63

    .line 671
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {v6, v1}, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 673
    :cond_63
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 674
    const/4 v0, 0x0

    :goto_6d
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_87

    .line 675
    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 677
    :cond_87
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 678
    const/4 v6, 0x2

    invoke-virtual {v5, v6, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 679
    const/4 v6, 0x3

    invoke-virtual {v5, v6, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 680
    const/4 v6, 0x4

    iget v7, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$date:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 681
    const/4 v6, 0x5

    iget v7, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$hash:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 682
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 683
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 684
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 685
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 696
    .end local v0    # "a":I
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "data2":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "size":I
    .end local v5    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_ac
    return-void

    .line 687
    :cond_ad
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "UPDATE stickers_featured SET date = ?"

    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    .line 688
    .restart local v5    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 689
    const/4 v6, 0x1

    iget v7, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$date:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 690
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 691
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ca} :catch_cb

    goto :goto_ac

    .line 693
    .end local v5    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_cb
    move-exception v3

    .line 694
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_ac
.end method

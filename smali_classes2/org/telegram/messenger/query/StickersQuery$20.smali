.class final Lorg/telegram/messenger/query/StickersQuery$20;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 822
    iput p1, p0, Lorg/telegram/messenger/query/StickersQuery$20;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    .line 825
    const/4 v7, 0x0

    .line 826
    .local v7, "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const/4 v4, 0x0

    .line 827
    .local v4, "date":I
    const/4 v6, 0x0

    .line 828
    .local v6, "hash":I
    const/4 v2, 0x0

    .line 830
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :try_start_5
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT data, date, hash FROM stickers_v2 WHERE id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lorg/telegram/messenger/query/StickersQuery$20;->val$type:I

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 831
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v10

    if-eqz v10, :cond_62

    .line 832
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    .line 833
    .local v3, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v3, :cond_59

    .line 834
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3d} :catch_6d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_77

    .line 835
    .end local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .local v8, "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const/4 v10, 0x0

    :try_start_3e
    invoke-virtual {v3, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    .line 836
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_43
    if-ge v0, v1, :cond_55

    .line 837
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v9

    .line 838
    .local v9, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 840
    .end local v9    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_55
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_58} :catch_81
    .catchall {:try_start_3e .. :try_end_58} :catchall_7e

    move-object v7, v8

    .line 842
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :cond_59
    const/4 v10, 0x1

    :try_start_5a
    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    .line 843
    # invokes: Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I
    invoke-static {v7}, Lorg/telegram/messenger/query/StickersQuery;->access$1900(Ljava/util/ArrayList;)I
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_61} :catch_6d
    .catchall {:try_start_5a .. :try_end_61} :catchall_77

    move-result v6

    .line 848
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_62
    if-eqz v2, :cond_67

    .line 849
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 852
    :cond_67
    :goto_67
    iget v10, p0, Lorg/telegram/messenger/query/StickersQuery$20;->val$type:I

    # invokes: Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(ILjava/util/ArrayList;ZII)V
    invoke-static {v10, v7, v13, v4, v6}, Lorg/telegram/messenger/query/StickersQuery;->access$2000(ILjava/util/ArrayList;ZII)V

    .line 853
    return-void

    .line 845
    :catch_6d
    move-exception v5

    .line 846
    .local v5, "e":Ljava/lang/Throwable;
    :goto_6e
    :try_start_6e
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_77

    .line 848
    if-eqz v2, :cond_67

    .line 849
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_67

    .line 848
    .end local v5    # "e":Ljava/lang/Throwable;
    :catchall_77
    move-exception v10

    :goto_78
    if-eqz v2, :cond_7d

    .line 849
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_7d
    throw v10

    .line 848
    .end local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :catchall_7e
    move-exception v10

    move-object v7, v8

    .end local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    goto :goto_78

    .line 845
    .end local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :catch_81
    move-exception v5

    move-object v7, v8

    .end local v8    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v7    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    goto :goto_6e
.end method

.class final Lorg/telegram/messenger/query/StickersQuery$5;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gif:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ZI)V
    .registers 3

    .prologue
    .line 299
    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$5;->val$gif:Z

    iput p2, p0, Lorg/telegram/messenger/query/StickersQuery$5;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 303
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT document FROM web_recent_v3 WHERE type = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v5, p0, Lorg/telegram/messenger/query/StickersQuery$5;->val$gif:Z

    if-eqz v5, :cond_5e

    const/4 v5, 0x2

    :goto_18
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ORDER BY date DESC"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 304
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_32
    :goto_32
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 306
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_32

    .line 307
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    .line 308
    .local v2, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v2, :cond_32

    .line 309
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 310
    .local v3, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v3, :cond_55

    .line 311
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_55
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_58} :catch_59

    goto :goto_32

    .line 334
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v2    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :catch_59
    move-exception v4

    .line 335
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 337
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_5d
    return-void

    .line 303
    :cond_5e
    :try_start_5e
    iget v5, p0, Lorg/telegram/messenger/query/StickersQuery$5;->val$type:I

    if-nez v5, :cond_64

    const/4 v5, 0x3

    goto :goto_18

    :cond_64
    const/4 v5, 0x4

    goto :goto_18

    .line 317
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_66
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 318
    new-instance v5, Lorg/telegram/messenger/query/StickersQuery$5$1;

    invoke-direct {v5, p0, v0}, Lorg/telegram/messenger/query/StickersQuery$5$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$5;Ljava/util/ArrayList;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_71} :catch_59

    goto :goto_5d
.end method

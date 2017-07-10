.class Lorg/telegram/messenger/MessagesStorage$26;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putDialogPhotos(ILorg/telegram/tgnet/TLRPC$photos_Photos;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$did:I

.field final synthetic val$photos:Lorg/telegram/tgnet/TLRPC$photos_Photos;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$photos_Photos;I)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1592
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$26;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$26;->val$photos:Lorg/telegram/tgnet/TLRPC$photos_Photos;

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$26;->val$did:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1596
    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$26;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "REPLACE INTO user_photos VALUES(?, ?, ?)"

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 1597
    .local v3, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$26;->val$photos:Lorg/telegram/tgnet/TLRPC$photos_Photos;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1598
    .local v2, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v5, :cond_14

    .line 1601
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1602
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$Photo;->getObjectSize()I

    move-result v5

    invoke-direct {v0, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1603
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v2, v0}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1604
    const/4 v5, 0x1

    iget v6, p0, Lorg/telegram/messenger/MessagesStorage$26;->val$did:I

    invoke-virtual {v3, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1605
    const/4 v5, 0x2

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    invoke-virtual {v3, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 1606
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 1607
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1608
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    goto :goto_14

    .line 1611
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v3    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_4a
    move-exception v1

    .line 1612
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1614
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4e
    return-void

    .line 1610
    .restart local v3    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_4f
    :try_start_4f
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_4a

    goto :goto_4e
.end method

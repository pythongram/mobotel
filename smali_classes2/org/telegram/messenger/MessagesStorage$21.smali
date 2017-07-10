.class Lorg/telegram/messenger/MessagesStorage$21;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->deleteUserChannelHistory(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$channelId:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;II)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1325
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$21;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$21;->val$channelId:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$21;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 1329
    :try_start_0
    iget v10, p0, Lorg/telegram/messenger/MessagesStorage$21;->val$channelId:I

    neg-int v10, v10

    int-to-long v2, v10

    .line 1330
    .local v2, "did":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v8, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$21;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v10}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT data FROM messages WHERE uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 1332
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_fb

    .line 1334
    .local v6, "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v10

    if-eqz v10, :cond_92

    .line 1335
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    .line 1336
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v1, :cond_2e

    .line 1337
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v7

    .line 1338
    .local v7, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1339
    if-eqz v7, :cond_2e

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iget v11, p0, Lorg/telegram/messenger/MessagesStorage$21;->val$uid:I

    if-ne v10, v11, :cond_2e

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2e

    .line 1340
    iget v10, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v10, :cond_c3

    .line 1342
    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6e
    :goto_6e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1343
    .local v9, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v5

    .line 1344
    .local v5, "file":Ljava/io/File;
    if-eqz v5, :cond_6e

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6e

    .line 1345
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_8d} :catch_8e

    goto :goto_6e

    .line 1361
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v9    # "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :catch_8e
    move-exception v4

    .line 1362
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8f
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1364
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_92
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1365
    new-instance v10, Lorg/telegram/messenger/MessagesStorage$21$1;

    invoke-direct {v10, p0, v8}, Lorg/telegram/messenger/MessagesStorage$21$1;-><init>(Lorg/telegram/messenger/MessagesStorage$21;Ljava/util/ArrayList;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1371
    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$21;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget v11, p0, Lorg/telegram/messenger/MessagesStorage$21;->val$channelId:I

    # invokes: Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    invoke-static {v10, v8, v11}, Lorg/telegram/messenger/MessagesStorage;->access$700(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    .line 1372
    iget-object v10, p0, Lorg/telegram/messenger/MessagesStorage$21;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/messenger/MessagesStorage$21;->val$channelId:I

    # invokes: Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    invoke-static {v10, v8, v11, v12}, Lorg/telegram/messenger/MessagesStorage;->access$800(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 1373
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v11}, Lorg/telegram/messenger/FileLoader;->deleteFiles(Ljava/util/ArrayList;I)V

    .line 1374
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c2

    .line 1375
    new-instance v10, Lorg/telegram/messenger/MessagesStorage$21$2;

    invoke-direct {v10, p0, v8}, Lorg/telegram/messenger/MessagesStorage$21$2;-><init>(Lorg/telegram/messenger/MessagesStorage$21;Ljava/util/ArrayList;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_c2} :catch_fb

    .line 1385
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v2    # "did":J
    .end local v6    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v8    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_c2
    :goto_c2
    return-void

    .line 1348
    .restart local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v2    # "did":J
    .restart local v6    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v7    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v8    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_c3
    :try_start_c3
    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v10, :cond_2e

    .line 1349
    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v5

    .line 1350
    .restart local v5    # "file":Ljava/io/File;
    if-eqz v5, :cond_e0

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_e0

    .line 1351
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    :cond_e0
    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v5

    .line 1354
    if-eqz v5, :cond_2e

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2e

    .line 1355
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_f9} :catch_8e

    goto/16 :goto_2e

    .line 1382
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "did":J
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v7    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v8    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_fb
    move-exception v4

    .line 1383
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c2
.end method

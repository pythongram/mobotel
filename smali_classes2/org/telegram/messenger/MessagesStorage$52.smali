.class Lorg/telegram/messenger/MessagesStorage$52;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$file:Lorg/telegram/tgnet/TLObject;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 3331
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$52;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$52;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$52;->val$file:Lorg/telegram/tgnet/TLObject;

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$52;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 3334
    const/4 v4, 0x0

    .line 3336
    .local v4, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :try_start_1
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$52;->val$path:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3337
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_76

    .line 3338
    const/4 v3, 0x0

    .line 3339
    .local v3, "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$52;->val$file:Lorg/telegram/tgnet/TLObject;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v5, :cond_27

    .line 3340
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    .end local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    .line 3341
    .restart local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    const-string v5, ""

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 3342
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$52;->val$file:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_3d
    .catchall {:try_start_1 .. :try_end_1f} :catchall_7c

    .line 3348
    :cond_1f
    :goto_1f
    if-nez v3, :cond_47

    .line 3364
    if-eqz v4, :cond_26

    .line 3365
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 3368
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    :cond_26
    :goto_26
    return-void

    .line 3343
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    :cond_27
    :try_start_27
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$52;->val$file:Lorg/telegram/tgnet/TLObject;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_1f

    .line 3344
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .end local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 3345
    .restart local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    const-string v5, ""

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 3346
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$52;->val$file:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3c} :catch_3d
    .catchall {:try_start_27 .. :try_end_3c} :catchall_7c

    goto :goto_1f

    .line 3361
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    :catch_3d
    move-exception v1

    .line 3362
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3e
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_7c

    .line 3364
    if-eqz v4, :cond_26

    .line 3365
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_26

    .line 3351
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    :cond_47
    :try_start_47
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$52;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "REPLACE INTO sent_files_v2 VALUES(?, ?, ?)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    .line 3352
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 3353
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getObjectSize()I

    move-result v5

    invoke-direct {v0, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 3354
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v3, v0}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3355
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 3356
    const/4 v5, 0x2

    iget v6, p0, Lorg/telegram/messenger/MessagesStorage$52;->val$type:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3357
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 3358
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 3359
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_76} :catch_3d
    .catchall {:try_start_47 .. :try_end_76} :catchall_7c

    .line 3364
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "messageMedia":Lorg/telegram/tgnet/TLRPC$MessageMedia;
    :cond_76
    if-eqz v4, :cond_26

    .line 3365
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_26

    .line 3364
    .end local v2    # "id":Ljava/lang/String;
    :catchall_7c
    move-exception v5

    if-eqz v4, :cond_82

    .line 3365
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_82
    throw v5
.end method

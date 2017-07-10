.class Lorg/telegram/messenger/MessagesStorage$54;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatTTL(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 3403
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$54;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$54;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3406
    const/4 v1, 0x0

    .line 3408
    .local v1, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$54;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "UPDATE enc_chats SET ttl = ? WHERE uid = ?"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 3409
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$54;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3410
    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$54;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 3411
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_26
    .catchall {:try_start_1 .. :try_end_20} :catchall_30

    .line 3415
    if-eqz v1, :cond_25

    .line 3416
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 3419
    :cond_25
    :goto_25
    return-void

    .line 3412
    :catch_26
    move-exception v0

    .line 3413
    .local v0, "e":Ljava/lang/Exception;
    :try_start_27
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_30

    .line 3415
    if-eqz v1, :cond_25

    .line 3416
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_25

    .line 3415
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_30
    move-exception v2

    if-eqz v1, :cond_36

    .line 3416
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_36
    throw v2
.end method

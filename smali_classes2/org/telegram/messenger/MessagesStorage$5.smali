.class Lorg/telegram/messenger/MessagesStorage$5;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$data:Lorg/telegram/tgnet/NativeByteBuffer;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;JLorg/telegram/tgnet/NativeByteBuffer;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 667
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$5;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$5;->val$id:J

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$5;->val$data:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 671
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$5;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "REPLACE INTO pending_tasks VALUES(?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 672
    .local v1, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v2, 0x1

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesStorage$5;->val$id:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 673
    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$5;->val$data:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 674
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 675
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_24
    .catchall {:try_start_0 .. :try_end_1e} :catchall_2e

    .line 679
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$5;->val$data:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 681
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_23
    return-void

    .line 676
    :catch_24
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    :try_start_25
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2e

    .line 679
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$5;->val$data:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_23

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2e
    move-exception v2

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$5;->val$data:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    throw v2
.end method

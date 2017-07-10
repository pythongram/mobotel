.class Lorg/telegram/messenger/MessagesStorage$58;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->hasAuthMessage(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$date:I

.field final synthetic val$result:[Z

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;I[ZLjava/util/concurrent/Semaphore;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 3541
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$58;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$58;->val$date:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$58;->val$result:[Z

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$58;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 3545
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$58;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SELECT mid FROM messages WHERE uid = 777000 AND date = %d AND mid < 0 LIMIT 1"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lorg/telegram/messenger/MessagesStorage$58;->val$date:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 3546
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$58;->val$result:[Z

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    aput-boolean v4, v2, v3

    .line 3547
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_33
    .catchall {:try_start_0 .. :try_end_2d} :catchall_3d

    .line 3551
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$58;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3553
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_32
    return-void

    .line 3548
    :catch_33
    move-exception v1

    .line 3549
    .local v1, "e":Ljava/lang/Exception;
    :try_start_34
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3d

    .line 3551
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$58;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_32

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3d
    move-exception v2

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$58;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    throw v2
.end method

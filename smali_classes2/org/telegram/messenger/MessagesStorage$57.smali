.class Lorg/telegram/messenger/MessagesStorage$57;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->isDialogHasMessages(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$did:J

.field final synthetic val$result:[Z

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;J[ZLjava/util/concurrent/Semaphore;)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 3516
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$57;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$did:J

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$result:[Z

    iput-object p5, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 3520
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SELECT mid FROM messages WHERE uid = %d LIMIT 1"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$did:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 3521
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$result:[Z

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    aput-boolean v4, v2, v3

    .line 3522
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_33
    .catchall {:try_start_0 .. :try_end_2d} :catchall_3d

    .line 3526
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3528
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_32
    return-void

    .line 3523
    :catch_33
    move-exception v1

    .line 3524
    .local v1, "e":Ljava/lang/Exception;
    :try_start_34
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3d

    .line 3526
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_32

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3d
    move-exception v2

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    throw v2
.end method

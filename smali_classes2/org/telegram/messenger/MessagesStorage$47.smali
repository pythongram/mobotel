.class Lorg/telegram/messenger/MessagesStorage$47;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->checkMessageId(JI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$dialog_id:J

.field final synthetic val$mid:I

.field final synthetic val$result:[Z

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;JI[ZLjava/util/concurrent/Semaphore;)V
    .registers 7
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2650
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$47;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$47;->val$dialog_id:J

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$47;->val$mid:I

    iput-object p5, p0, Lorg/telegram/messenger/MessagesStorage$47;->val$result:[Z

    iput-object p6, p0, Lorg/telegram/messenger/MessagesStorage$47;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 2653
    const/4 v0, 0x0

    .line 2655
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$47;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SELECT mid FROM messages WHERE uid = %d AND mid = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, p0, Lorg/telegram/messenger/MessagesStorage$47;->val$dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lorg/telegram/messenger/MessagesStorage$47;->val$mid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 2656
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2657
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$47;->val$result:[Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v2, v3
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_42
    .catchall {:try_start_1 .. :try_end_37} :catchall_4c

    .line 2662
    :cond_37
    if-eqz v0, :cond_3c

    .line 2663
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2666
    :cond_3c
    :goto_3c
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$47;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2667
    return-void

    .line 2659
    :catch_42
    move-exception v1

    .line 2660
    .local v1, "e":Ljava/lang/Exception;
    :try_start_43
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4c

    .line 2662
    if-eqz v0, :cond_3c

    .line 2663
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_3c

    .line 2662
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_4c
    move-exception v2

    if-eqz v0, :cond_52

    .line 2663
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_52
    throw v2
.end method

.class Lorg/telegram/messenger/MessagesStorage$84;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$dialog_id:J

.field final synthetic val$max:[Ljava/lang/Integer;

.field final synthetic val$outbox:Z

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;ZJ[Ljava/lang/Integer;Ljava/util/concurrent/Semaphore;)V
    .registers 8
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 6188
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$84;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$84;->val$outbox:Z

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesStorage$84;->val$dialog_id:J

    iput-object p5, p0, Lorg/telegram/messenger/MessagesStorage$84;->val$max:[Ljava/lang/Integer;

    iput-object p6, p0, Lorg/telegram/messenger/MessagesStorage$84;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 6191
    const/4 v0, 0x0

    .line 6193
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :try_start_1
    iget-boolean v2, p0, Lorg/telegram/messenger/MessagesStorage$84;->val$outbox:Z

    if-eqz v2, :cond_46

    .line 6194
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$84;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT outbox_max FROM dialogs WHERE did = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesStorage$84;->val$dialog_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 6198
    :goto_27
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 6199
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$84;->val$max:[Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_69
    .catchall {:try_start_1 .. :try_end_3b} :catchall_73

    .line 6204
    :cond_3b
    if-eqz v0, :cond_40

    .line 6205
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 6208
    :cond_40
    :goto_40
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$84;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 6209
    return-void

    .line 6196
    :cond_46
    :try_start_46
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$84;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT inbox_max FROM dialogs WHERE did = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesStorage$84;->val$dialog_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_67} :catch_69
    .catchall {:try_start_46 .. :try_end_67} :catchall_73

    move-result-object v0

    goto :goto_27

    .line 6201
    :catch_69
    move-exception v1

    .line 6202
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6a
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_73

    .line 6204
    if-eqz v0, :cond_40

    .line 6205
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_40

    .line 6204
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_73
    move-exception v2

    if-eqz v0, :cond_79

    .line 6205
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_79
    throw v2
.end method

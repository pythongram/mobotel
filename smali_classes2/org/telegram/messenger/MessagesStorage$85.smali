.class Lorg/telegram/messenger/MessagesStorage$85;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$channelId:I

.field final synthetic val$pts:[Ljava/lang/Integer;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;I[Ljava/lang/Integer;Ljava/util/concurrent/Semaphore;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 6222
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$85;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$85;->val$channelId:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$85;->val$pts:[Ljava/lang/Integer;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$85;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 6225
    const/4 v0, 0x0

    .line 6227
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$85;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT pts FROM dialogs WHERE did = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/messenger/MessagesStorage$85;->val$channelId:I

    neg-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 6228
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 6229
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$85;->val$pts:[Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_47
    .catchall {:try_start_1 .. :try_end_38} :catchall_51

    .line 6234
    :cond_38
    if-eqz v0, :cond_3d

    .line 6235
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 6239
    :cond_3d
    :goto_3d
    :try_start_3d
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$85;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_46

    .line 6240
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$85;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_58

    .line 6245
    :cond_46
    :goto_46
    return-void

    .line 6231
    :catch_47
    move-exception v1

    .line 6232
    .local v1, "e":Ljava/lang/Exception;
    :try_start_48
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_51

    .line 6234
    if-eqz v0, :cond_3d

    .line 6235
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_3d

    .line 6234
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_51
    move-exception v2

    if-eqz v0, :cond_57

    .line 6235
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_57
    throw v2

    .line 6242
    :catch_58
    move-exception v1

    .line 6243
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_46
.end method

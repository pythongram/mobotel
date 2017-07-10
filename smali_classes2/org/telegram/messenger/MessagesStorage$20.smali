.class Lorg/telegram/messenger/MessagesStorage$20;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putBlockedUsers(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$ids:Ljava/util/ArrayList;

.field final synthetic val$replace:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;ZLjava/util/ArrayList;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1301
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$20;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$20;->val$replace:Z

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$20;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1305
    :try_start_0
    iget-boolean v3, p0, Lorg/telegram/messenger/MessagesStorage$20;->val$replace:Z

    if-eqz v3, :cond_17

    .line 1306
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$20;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "DELETE FROM blocked_users WHERE 1"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1308
    :cond_17
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$20;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 1309
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$20;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "REPLACE INTO blocked_users VALUES(?)"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    .line 1310
    .local v2, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$20;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1311
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1312
    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1313
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_32

    .line 1317
    .end local v1    # "id":Ljava/lang/Integer;
    .end local v2    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_4d
    move-exception v0

    .line 1318
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1320
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_51
    return-void

    .line 1315
    .restart local v2    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_52
    :try_start_52
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1316
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$20;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5e} :catch_4d

    goto :goto_51
.end method

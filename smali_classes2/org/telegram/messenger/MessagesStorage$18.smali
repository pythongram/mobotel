.class Lorg/telegram/messenger/MessagesStorage$18;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getBlockedUsers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1254
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$18;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 1258
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1259
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$18;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "SELECT * FROM blocked_users WHERE 1"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 1261
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1262
    .local v5, "usersToLoad":Ljava/lang/StringBuilder;
    :goto_1e
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 1263
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    .line 1264
    .local v3, "user_id":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_3b

    .line 1266
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    :cond_3b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_1e

    .line 1277
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v2    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "user_id":I
    .end local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v5    # "usersToLoad":Ljava/lang/StringBuilder;
    :catch_3f
    move-exception v1

    .line 1278
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1280
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_43
    return-void

    .line 1270
    .restart local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v2    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .restart local v5    # "usersToLoad":Ljava/lang/StringBuilder;
    :cond_44
    :try_start_44
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1272
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_56

    .line 1273
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$18;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1276
    :cond_56
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v4, v7}, Lorg/telegram/messenger/MessagesController;->processLoadedBlockedUsers(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5e} :catch_3f

    goto :goto_43
.end method

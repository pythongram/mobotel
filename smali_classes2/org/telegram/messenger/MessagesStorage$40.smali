.class Lorg/telegram/messenger/MessagesStorage$40;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$contactsCopy:Ljava/util/ArrayList;

.field final synthetic val$deleteAll:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;ZLjava/util/ArrayList;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2353
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$40;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$40;->val$deleteAll:Z

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$40;->val$contactsCopy:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 2357
    :try_start_1
    iget-boolean v4, p0, Lorg/telegram/messenger/MessagesStorage$40;->val$deleteAll:Z

    if-eqz v4, :cond_18

    .line 2358
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$40;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string v6, "DELETE FROM contacts WHERE 1"

    invoke-virtual {v4, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2360
    :cond_18
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$40;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 2361
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$40;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string v6, "REPLACE INTO contacts VALUES(?, ?)"

    invoke-virtual {v4, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 2362
    .local v3, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2e
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$40;->val$contactsCopy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_58

    .line 2363
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$40;->val$contactsCopy:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 2364
    .local v1, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 2365
    const/4 v4, 0x1

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v3, v4, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2366
    const/4 v6, 0x2

    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_contact;->mutual:Z

    if-eqz v4, :cond_56

    move v4, v5

    :goto_4d
    invoke-virtual {v3, v6, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2367
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 2362
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 2366
    :cond_56
    const/4 v4, 0x0

    goto :goto_4d

    .line 2369
    .end local v1    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_58
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2370
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$40;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_64} :catch_65

    .line 2374
    .end local v0    # "a":I
    .end local v3    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_64
    return-void

    .line 2371
    :catch_65
    move-exception v2

    .line 2372
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_64
.end method

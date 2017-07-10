.class Lorg/telegram/messenger/MessagesStorage$45;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getContacts()V
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
    .line 2503
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$45;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2506
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2507
    .local v1, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2509
    .local v6, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :try_start_c
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$45;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v7}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v7

    const-string v10, "SELECT * FROM contacts WHERE 1"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 2510
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2511
    .local v4, "uids":Ljava/lang/StringBuilder;
    :goto_20
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_64

    .line 2512
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    .line 2513
    .local v5, "user_id":I
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 2514
    .local v0, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    iput v5, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    .line 2515
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    if-ne v7, v8, :cond_62

    move v7, v8

    :goto_3a
    iput-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->mutual:Z

    .line 2516
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_47

    .line 2517
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    :cond_47
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2520
    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4f} :catch_50

    goto :goto_20

    .line 2527
    .end local v0    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v4    # "uids":Ljava/lang/StringBuilder;
    .end local v5    # "user_id":I
    :catch_50
    move-exception v3

    .line 2528
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2529
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2530
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2532
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5a
    :goto_5a
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    invoke-virtual {v7, v1, v6, v8}, Lorg/telegram/messenger/ContactsController;->processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 2533
    return-void

    .restart local v0    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .restart local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v4    # "uids":Ljava/lang/StringBuilder;
    .restart local v5    # "user_id":I
    :cond_62
    move v7, v9

    .line 2515
    goto :goto_3a

    .line 2522
    .end local v0    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v5    # "user_id":I
    :cond_64
    :try_start_64
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2524
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_5a

    .line 2525
    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$45;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v6}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_76} :catch_50

    goto :goto_5a
.end method

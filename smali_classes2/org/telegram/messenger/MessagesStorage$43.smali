.class Lorg/telegram/messenger/MessagesStorage$43;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$contactHashMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashMap;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2417
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$43;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$contactHashMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 2421
    :try_start_0
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$43;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 2422
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$43;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "REPLACE INTO user_contacts_v6 VALUES(?, ?, ?)"

    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    .line 2423
    .local v4, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$43;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "REPLACE INTO user_phones_v6 VALUES(?, ?, ?, ?)"

    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    .line 2424
    .local v5, "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2425
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 2426
    .local v1, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    iget-object v6, v1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2b

    iget-object v6, v1, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 2429
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 2430
    const/4 v6, 0x1

    iget v8, v1, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    invoke-virtual {v4, v6, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2431
    const/4 v6, 0x2

    iget-object v8, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 2432
    const/4 v6, 0x3

    iget-object v8, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 2433
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 2434
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_66
    iget-object v6, v1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2b

    .line 2435
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 2436
    const/4 v6, 0x1

    iget v8, v1, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    invoke-virtual {v5, v6, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2437
    const/4 v8, 0x2

    iget-object v6, v1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v8, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 2438
    const/4 v8, 0x3

    iget-object v6, v1, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v8, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 2439
    const/4 v8, 0x4

    iget-object v6, v1, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2440
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 2434
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 2443
    .end local v0    # "a":I
    .end local v1    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    :cond_a5
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2444
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2445
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$43;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b4} :catch_b5

    .line 2449
    .end local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .end local v5    # "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_b4
    return-void

    .line 2446
    :catch_b5
    move-exception v2

    .line 2447
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_b4
.end method

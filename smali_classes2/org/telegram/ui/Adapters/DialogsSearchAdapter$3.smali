.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 336
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 30

    .prologue
    .line 340
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v26

    const-string v27, "SELECT did, date FROM search_recent WHERE 1"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    .line 342
    .local v11, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v25, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v10, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v17, "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v15, "encUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v6, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 350
    .local v18, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;>;"
    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v27, "mainconfig"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 351
    .local v21, "preferences":Landroid/content/SharedPreferences;
    const-string v26, "chat_unlocked"

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 352
    .local v8, "chatUnlocked":Z
    :cond_4c
    :goto_4c
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v26

    if-eqz v26, :cond_15e

    .line 353
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v12

    .line 355
    .local v12, "did":J
    if-nez v8, :cond_7d

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "hide_"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_4c

    .line 358
    :cond_7d
    const/4 v5, 0x0

    .line 359
    .local v5, "add":Z
    long-to-int v0, v12

    move/from16 v20, v0

    .line 360
    .local v20, "lower_id":I
    const/16 v26, 0x20

    shr-long v26, v12, v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v19, v0

    .line 361
    .local v19, "high_id":I
    if-eqz v20, :cond_136

    .line 362
    const/16 v26, 0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_ee

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v26, v0

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I
    invoke-static/range {v26 .. v26}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v26

    if-nez v26, :cond_b6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b6

    .line 364
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    const/4 v5, 0x1

    .line 386
    :cond_b6
    :goto_b6
    if-eqz v5, :cond_4c

    .line 387
    new-instance v22, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    invoke-direct/range {v22 .. v22}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;-><init>()V

    .line 388
    .local v22, "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    move-object/from16 v0, v22

    iput-wide v12, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    .line 389
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    .line 390
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    move-object/from16 v0, v22

    iget-wide v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e7} :catch_e9

    goto/16 :goto_4c

    .line 458
    .end local v5    # "add":Z
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;>;"
    .end local v8    # "chatUnlocked":Z
    .end local v10    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v12    # "did":J
    .end local v15    # "encUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v17    # "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;>;"
    .end local v19    # "high_id":I
    .end local v20    # "lower_id":I
    .end local v21    # "preferences":Landroid/content/SharedPreferences;
    .end local v22    # "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    .end local v25    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_e9
    move-exception v14

    .line 459
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 461
    .end local v14    # "e":Ljava/lang/Exception;
    :goto_ed
    return-void

    .line 368
    .restart local v5    # "add":Z
    .restart local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;>;"
    .restart local v8    # "chatUnlocked":Z
    .restart local v10    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v12    # "did":J
    .restart local v15    # "encUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .restart local v17    # "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;>;"
    .restart local v19    # "high_id":I
    .restart local v20    # "lower_id":I
    .restart local v21    # "preferences":Landroid/content/SharedPreferences;
    .restart local v25    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_ee
    if-lez v20, :cond_115

    .line 369
    :try_start_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v26, v0

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I
    invoke-static/range {v26 .. v26}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_b6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b6

    .line 370
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    const/4 v5, 0x1

    goto :goto_b6

    .line 374
    :cond_115
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b6

    .line 375
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    const/4 v5, 0x1

    goto :goto_b6

    .line 380
    :cond_136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v26, v0

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I
    invoke-static/range {v26 .. v26}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v26

    if-nez v26, :cond_b6

    .line 381
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b6

    .line 382
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    const/4 v5, 0x1

    goto/16 :goto_b6

    .line 394
    .end local v5    # "add":Z
    .end local v12    # "did":J
    .end local v19    # "high_id":I
    .end local v20    # "lower_id":I
    :cond_15e
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 397
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v24, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_1c9

    .line 400
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v16, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v26

    const-string v27, ","

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 402
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_18b
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v4, v0, :cond_1c9

    .line 403
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const/16 v28, 0x20

    shl-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 402
    add-int/lit8 v4, v4, 0x1

    goto :goto_18b

    .line 407
    .end local v4    # "a":I
    .end local v16    # "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    :cond_1c9
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_242

    .line 408
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v9, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v26

    const-string v27, ","

    move-object/from16 v0, v27

    invoke-static {v0, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v9}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 410
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_1e8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v4, v0, :cond_242

    .line 411
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 413
    .local v7, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v26, v0

    if-lez v26, :cond_226

    .line 414
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v26, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v12, v0

    .line 418
    .restart local v12    # "did":J
    :goto_208
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-object/from16 v26, v0

    if-eqz v26, :cond_22f

    .line 419
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 420
    .restart local v22    # "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    if-eqz v22, :cond_223

    .line 421
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 410
    .end local v22    # "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    :cond_223
    :goto_223
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e8

    .line 416
    .end local v12    # "did":J
    :cond_226
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v12

    .restart local v12    # "did":J
    goto :goto_208

    .line 424
    :cond_22f
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    move-object/from16 v0, v26

    iput-object v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    goto :goto_223

    .line 429
    .end local v4    # "a":I
    .end local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v9    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v12    # "did":J
    :cond_242
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_294

    .line 430
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v26

    const-string v27, ","

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 431
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_260
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v4, v0, :cond_294

    .line 432
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/tgnet/TLRPC$User;

    .line 433
    .local v23, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 434
    .restart local v22    # "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    if-eqz v22, :cond_291

    .line 435
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 431
    :cond_291
    add-int/lit8 v4, v4, 0x1

    goto :goto_260

    .line 440
    .end local v4    # "a":I
    .end local v22    # "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    .end local v23    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_294
    new-instance v26, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3$1;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;)V

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 452
    new-instance v26, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v6, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3$2;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2b0
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_2b0} :catch_e9

    goto/16 :goto_ed
.end method

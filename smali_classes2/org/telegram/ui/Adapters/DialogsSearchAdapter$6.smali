.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 537
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$query:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$searchId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 44

    .prologue
    .line 541
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$query:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    .line 542
    .local v27, "search1":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v37

    if-nez v37, :cond_42

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    const/16 v38, -0x1

    # setter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I
    invoke-static/range {v37 .. v38}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$902(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)I

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v41, v0

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I
    invoke-static/range {v41 .. v41}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$900(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v41

    # invokes: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    invoke-static/range {v37 .. v41}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1000(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 828
    .end local v27    # "search1":Ljava/lang/String;
    :goto_41
    return-void

    .line 547
    .restart local v27    # "search1":Ljava/lang/String;
    :cond_42
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 548
    .local v28, "search2":Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_5a

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v37

    if-nez v37, :cond_5c

    .line 549
    :cond_5a
    const/16 v28, 0x0

    .line 551
    :cond_5c
    if-eqz v28, :cond_117

    const/16 v37, 0x1

    :goto_60
    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    .line 552
    .local v26, "search":[Ljava/lang/String;
    const/16 v37, 0x0

    aput-object v27, v26, v37

    .line 553
    if-eqz v28, :cond_72

    .line 554
    const/16 v37, 0x1

    aput-object v28, v26, v37

    .line 557
    :cond_72
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v36, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v6, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v15, "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v14, "encUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    const/16 v25, 0x0

    .line 563
    .local v25, "resultCount":I
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 564
    .local v12, "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v37

    const-string v38, "SELECT did, date FROM dialogs ORDER BY date DESC LIMIT 600"

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 565
    .local v7, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_a3
    :goto_a3
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v37

    if-eqz v37, :cond_186

    .line 566
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v18

    .line 567
    .local v18, "id":J
    new-instance v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;)V

    .line 568
    .local v9, "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->date:I

    .line 569
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v20, v0

    .line 572
    .local v20, "lower_id":I
    const/16 v37, 0x20

    shr-long v38, v18, v37

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v17, v0

    .line 573
    .local v17, "high_id":I
    if-eqz v20, :cond_163

    .line 574
    const/16 v37, 0x1

    move/from16 v0, v17

    move/from16 v1, v37

    if-ne v0, v1, :cond_11b

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I
    invoke-static/range {v37 .. v37}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v37

    if-nez v37, :cond_a3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_a3

    .line 576
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_110} :catch_111

    goto :goto_a3

    .line 825
    .end local v6    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v12    # "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;>;"
    .end local v14    # "encUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v15    # "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "high_id":I
    .end local v18    # "id":J
    .end local v20    # "lower_id":I
    .end local v25    # "resultCount":I
    .end local v26    # "search":[Ljava/lang/String;
    .end local v27    # "search1":Ljava/lang/String;
    .end local v28    # "search2":Ljava/lang/String;
    .end local v36    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_111
    move-exception v13

    .line 826
    .local v13, "e":Ljava/lang/Exception;
    invoke-static {v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 551
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v27    # "search1":Ljava/lang/String;
    .restart local v28    # "search2":Ljava/lang/String;
    :cond_117
    const/16 v37, 0x0

    goto/16 :goto_60

    .line 579
    .restart local v6    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .restart local v12    # "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;>;"
    .restart local v14    # "encUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .restart local v15    # "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v17    # "high_id":I
    .restart local v18    # "id":J
    .restart local v20    # "lower_id":I
    .restart local v25    # "resultCount":I
    .restart local v26    # "search":[Ljava/lang/String;
    .restart local v36    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_11b
    if-lez v20, :cond_142

    .line 580
    :try_start_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I
    invoke-static/range {v37 .. v37}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v37

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_a3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_a3

    .line 581
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a3

    .line 584
    :cond_142
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_a3

    .line 585
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a3

    .line 589
    :cond_163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I
    invoke-static/range {v37 .. v37}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v37

    if-nez v37, :cond_a3

    .line 590
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_a3

    .line 591
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a3

    .line 595
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v17    # "high_id":I
    .end local v18    # "id":J
    .end local v20    # "lower_id":I
    :cond_186
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 597
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_33c

    .line 598
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v37

    sget-object v38, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v39, "SELECT data, status, name FROM users WHERE uid IN(%s)"

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, ","

    move-object/from16 v0, v42

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    invoke-static/range {v38 .. v40}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 599
    :cond_1c1
    :goto_1c1
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v37

    if-eqz v37, :cond_339

    .line 600
    const/16 v37, 0x2

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v21

    .line 601
    .local v21, "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 602
    .local v30, "tName":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1e7

    .line 603
    const/16 v30, 0x0

    .line 605
    :cond_1e7
    const/16 v34, 0x0

    .line 606
    .local v34, "username":Ljava/lang/String;
    const-string v37, ";;;"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v35

    .line 607
    .local v35, "usernamePos":I
    const/16 v37, -0x1

    move/from16 v0, v35

    move/from16 v1, v37

    if-eq v0, v1, :cond_205

    .line 608
    add-int/lit8 v37, v35, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    .line 610
    :cond_205
    const/16 v16, 0x0

    .line 611
    .local v16, "found":I
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v38, v0

    const/16 v37, 0x0

    :goto_20e
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1c1

    aget-object v22, v26, v37

    .line 612
    .local v22, "q":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_26a

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_26a

    if-eqz v30, :cond_2ea

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_26a

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_2ea

    .line 613
    :cond_26a
    const/16 v16, 0x1

    .line 617
    :cond_26c
    :goto_26c
    if-eqz v16, :cond_335

    .line 618
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 619
    .local v8, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_1c1

    .line 620
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v37

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v33

    .line 621
    .local v33, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 622
    move-object/from16 v0, v33

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 623
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2c0

    .line 624
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 626
    :cond_2c0
    const/16 v37, 0x1

    move/from16 v0, v16

    move/from16 v1, v37

    if-ne v0, v1, :cond_2fa

    .line 627
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 631
    :goto_2e2
    move-object/from16 v0, v33

    iput-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 632
    add-int/lit8 v25, v25, 0x1

    .line 633
    goto/16 :goto_1c1

    .line 614
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2ea
    if-eqz v34, :cond_26c

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_26c

    .line 615
    const/16 v16, 0x2

    goto/16 :goto_26c

    .line 629
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .restart local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2fa
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "@"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "@"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v37 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_2e2

    .line 611
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_335
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_20e

    .line 638
    .end local v16    # "found":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "q":Ljava/lang/String;
    .end local v30    # "tName":Ljava/lang/String;
    .end local v34    # "username":Ljava/lang/String;
    .end local v35    # "usernamePos":I
    :cond_339
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 641
    :cond_33c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_476

    .line 642
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v37

    sget-object v38, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v39, "SELECT data, name FROM chats WHERE uid IN(%s)"

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, ","

    move-object/from16 v0, v42

    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    invoke-static/range {v38 .. v40}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 643
    :cond_372
    :goto_372
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v37

    if-eqz v37, :cond_473

    .line 644
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v21

    .line 645
    .restart local v21    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 646
    .restart local v30    # "tName":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_398

    .line 647
    const/16 v30, 0x0

    .line 649
    :cond_398
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v38, v0

    const/16 v37, 0x0

    :goto_39f
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_372

    aget-object v22, v26, v37

    .line 650
    .restart local v22    # "q":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_3fb

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_3fb

    if-eqz v30, :cond_46f

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_3fb

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_46f

    .line 651
    :cond_3fb
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 652
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_372

    .line 653
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v37

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 654
    .local v5, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 655
    if-eqz v5, :cond_372

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    move/from16 v37, v0

    if-nez v37, :cond_372

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v37

    if-eqz v37, :cond_42e

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v37

    if-nez v37, :cond_372

    .line 657
    :cond_42e
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v37, v0

    if-lez v37, :cond_466

    .line 658
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v37, v0

    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-long v10, v0

    .line 662
    .local v10, "dialog_id":J
    :goto_440
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 663
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 664
    iput-object v5, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 665
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_372

    .line 660
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v10    # "dialog_id":J
    :cond_466
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v10

    .restart local v10    # "dialog_id":J
    goto :goto_440

    .line 649
    .end local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "dialog_id":J
    :cond_46f
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_39f

    .line 672
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "q":Ljava/lang/String;
    .end local v30    # "tName":Ljava/lang/String;
    :cond_473
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 675
    :cond_476
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_726

    .line 676
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v37

    sget-object v38, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v39, "SELECT q.data, u.name, q.user, q.g, q.authkey, q.ttl, u.data, u.status, q.layer, q.seq_in, q.seq_out, q.use_count, q.exchange_id, q.key_date, q.fprint, q.fauthkey, q.khash, q.in_seq_no FROM enc_chats as q INNER JOIN users as u ON q.user = u.uid WHERE q.uid IN(%s)"

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, ","

    move-object/from16 v0, v42

    invoke-static {v0, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    invoke-static/range {v38 .. v40}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 677
    :cond_4ac
    :goto_4ac
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v37

    if-eqz v37, :cond_723

    .line 678
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v21

    .line 679
    .restart local v21    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 680
    .restart local v30    # "tName":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_4d2

    .line 681
    const/16 v30, 0x0

    .line 684
    :cond_4d2
    const/16 v34, 0x0

    .line 685
    .restart local v34    # "username":Ljava/lang/String;
    const-string v37, ";;;"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v35

    .line 686
    .restart local v35    # "usernamePos":I
    const/16 v37, -0x1

    move/from16 v0, v35

    move/from16 v1, v37

    if-eq v0, v1, :cond_4f0

    .line 687
    add-int/lit8 v37, v35, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    .line 689
    :cond_4f0
    const/16 v16, 0x0

    .line 690
    .restart local v16    # "found":I
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_4f3
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v4, v0, :cond_4ac

    .line 691
    aget-object v22, v26, v4

    .line 692
    .restart local v22    # "q":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_552

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_552

    if-eqz v30, :cond_6d4

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_552

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_6d4

    .line 693
    :cond_552
    const/16 v16, 0x1

    .line 698
    :cond_554
    :goto_554
    if-eqz v16, :cond_71f

    .line 699
    const/4 v5, 0x0

    .line 700
    .local v5, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    const/16 v33, 0x0

    .line 701
    .restart local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 702
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_578

    .line 703
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v37

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v5

    .line 704
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 706
    :cond_578
    const/16 v37, 0x6

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 707
    if-eqz v8, :cond_597

    .line 708
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v37

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v33

    .line 709
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 711
    :cond_597
    if-eqz v5, :cond_4ac

    if-eqz v33, :cond_4ac

    .line 712
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const/16 v37, 0x20

    shl-long v38, v38, v37

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 713
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    const/16 v37, 0x2

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    .line 714
    const/16 v37, 0x3

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    .line 715
    const/16 v37, 0x4

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 716
    const/16 v37, 0x5

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    .line 717
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    .line 718
    const/16 v37, 0x9

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 719
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 720
    const/16 v37, 0xb

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v32

    .line 721
    .local v32, "use_count":I
    shr-int/lit8 v37, v32, 0x10

    move/from16 v0, v37

    int-to-short v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    iput-short v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 722
    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    iput-short v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 723
    const/16 v37, 0xc

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v38

    move-wide/from16 v0, v38

    iput-wide v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 724
    const/16 v37, 0xd

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 725
    const/16 v37, 0xe

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v38

    move-wide/from16 v0, v38

    iput-wide v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 726
    const/16 v37, 0xf

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 727
    const/16 v37, 0x10

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 728
    const/16 v37, 0x11

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    .line 730
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v37, v0

    if-eqz v37, :cond_688

    .line 731
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v37, v0

    const/16 v38, 0x7

    move/from16 v0, v38

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 733
    :cond_688
    const/16 v37, 0x1

    move/from16 v0, v16

    move/from16 v1, v37

    if-ne v0, v1, :cond_6e4

    .line 734
    new-instance v37, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v38 .. v39}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v37

    iput-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 735
    iget-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    check-cast v37, Landroid/text/SpannableStringBuilder;

    new-instance v38, Landroid/text/style/ForegroundColorSpan;

    const-string v39, "chats_secretName"

    invoke-static/range {v39 .. v39}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v39

    invoke-direct/range {v38 .. v39}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v39, 0x0

    iget-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/lang/CharSequence;->length()I

    move-result v40

    const/16 v41, 0x21

    invoke-virtual/range {v37 .. v41}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 739
    :goto_6c9
    iput-object v5, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 740
    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    add-int/lit8 v25, v25, 0x1

    .line 742
    goto/16 :goto_4ac

    .line 694
    .end local v5    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v32    # "use_count":I
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6d4
    if-eqz v34, :cond_554

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_554

    .line 695
    const/16 v16, 0x2

    goto/16 :goto_554

    .line 737
    .restart local v5    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .restart local v32    # "use_count":I
    .restart local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6e4
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "@"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "@"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v37 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_6c9

    .line 690
    .end local v5    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v32    # "use_count":I
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_71f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4f3

    .line 747
    .end local v4    # "a":I
    .end local v16    # "found":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "q":Ljava/lang/String;
    .end local v30    # "tName":Ljava/lang/String;
    .end local v34    # "username":Ljava/lang/String;
    .end local v35    # "usernamePos":I
    :cond_723
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 750
    :cond_726
    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 751
    .local v29, "searchResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;>;"
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_737
    :goto_737
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_755

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 752
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    iget-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v38, v0

    if-eqz v38, :cond_737

    iget-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object/from16 v38, v0

    if-eqz v38, :cond_737

    .line 753
    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_737

    .line 757
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    :cond_755
    new-instance v37, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6$1;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6$1;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 769
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v23, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v24, "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_770
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v4, v0, :cond_799

    .line 773
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 774
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    iget-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    iget-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    add-int/lit8 v4, v4, 0x1

    goto :goto_770

    .line 778
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    :cond_799
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I
    invoke-static/range {v37 .. v37}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v37

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_944

    .line 779
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v37

    const-string v38, "SELECT u.data, u.status, u.name, u.uid FROM users as u INNER JOIN contacts as c ON u.uid = c.uid"

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 780
    :cond_7c1
    :goto_7c1
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v37

    if-eqz v37, :cond_941

    .line 781
    const/16 v37, 0x3

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v31

    .line 782
    .local v31, "uid":I
    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_7c1

    .line 785
    const/16 v37, 0x2

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v21

    .line 786
    .restart local v21    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 787
    .restart local v30    # "tName":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_800

    .line 788
    const/16 v30, 0x0

    .line 790
    :cond_800
    const/16 v34, 0x0

    .line 791
    .restart local v34    # "username":Ljava/lang/String;
    const-string v37, ";;;"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v35

    .line 792
    .restart local v35    # "usernamePos":I
    const/16 v37, -0x1

    move/from16 v0, v35

    move/from16 v1, v37

    if-eq v0, v1, :cond_81e

    .line 793
    add-int/lit8 v37, v35, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    .line 795
    :cond_81e
    const/16 v16, 0x0

    .line 796
    .restart local v16    # "found":I
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v38, v0

    const/16 v37, 0x0

    :goto_827
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_7c1

    aget-object v22, v26, v37

    .line 797
    .restart local v22    # "q":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_883

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_883

    if-eqz v30, :cond_8f0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_883

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_8f0

    .line 798
    :cond_883
    const/16 v16, 0x1

    .line 802
    :cond_885
    :goto_885
    if-eqz v16, :cond_93d

    .line 803
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 804
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_7c1

    .line 805
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v37

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v33

    .line 806
    .restart local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 807
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v37, v0

    if-eqz v37, :cond_8c2

    .line 808
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 810
    :cond_8c2
    const/16 v37, 0x1

    move/from16 v0, v16

    move/from16 v1, v37

    if-ne v0, v1, :cond_8ff

    .line 811
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    :goto_8e7
    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7c1

    .line 799
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8f0
    if-eqz v34, :cond_885

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_885

    .line 800
    const/16 v16, 0x2

    goto :goto_885

    .line 813
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8ff
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "@"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "@"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v37 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8e7

    .line 796
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_93d
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_827

    .line 821
    .end local v16    # "found":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "q":Ljava/lang/String;
    .end local v30    # "tName":Ljava/lang/String;
    .end local v31    # "uid":I
    .end local v34    # "username":Ljava/lang/String;
    .end local v35    # "usernamePos":I
    :cond_941
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 824
    :cond_944
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$searchId:I

    move/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v38

    # invokes: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    invoke-static {v0, v1, v2, v14, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1000(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    :try_end_95b
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_95b} :catch_111

    goto/16 :goto_41
.end method

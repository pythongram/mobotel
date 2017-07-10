.class Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;
.super Ljava/lang/Object;
.source "ShareAlert2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    .prologue
    .line 609
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;->val$query:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;->val$searchId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 37

    .prologue
    .line 613
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;->val$query:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 614
    .local v21, "search1":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v30

    if-nez v30, :cond_38

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    move-object/from16 v30, v0

    const/16 v31, -0x1

    # setter for: Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->lastSearchId:I
    invoke-static/range {v30 .. v31}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->access$2002(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;I)I

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    move-object/from16 v30, v0

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    move-object/from16 v32, v0

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->lastSearchId:I
    invoke-static/range {v32 .. v32}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->access$2000(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;)I

    move-result v32

    # invokes: Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V
    invoke-static/range {v30 .. v32}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->access$2100(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Ljava/util/ArrayList;I)V

    .line 807
    .end local v21    # "search1":Ljava/lang/String;
    :goto_37
    return-void

    .line 619
    .restart local v21    # "search1":Ljava/lang/String;
    :cond_38
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 620
    .local v22, "search2":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_50

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v30

    if-nez v30, :cond_52

    .line 621
    :cond_50
    const/16 v22, 0x0

    .line 623
    :cond_52
    if-eqz v22, :cond_152

    const/16 v30, 0x1

    :goto_56
    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 624
    .local v20, "search":[Ljava/lang/String;
    const/16 v30, 0x0

    aput-object v21, v20, v30

    .line 625
    if-eqz v22, :cond_68

    .line 626
    const/16 v30, 0x1

    aput-object v22, v20, v30

    .line 629
    :cond_68
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v29, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v6, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    .line 633
    .local v19, "resultCount":I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 634
    .local v10, "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v30

    const-string v31, "SELECT did, date FROM dialogs ORDER BY date DESC LIMIT 400"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 635
    .local v7, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_8f
    :goto_8f
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v30

    if-eqz v30, :cond_177

    .line 636
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v14

    .line 637
    .local v14, "id":J
    new-instance v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;-><init>(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Lorg/telegram/ui/Telehgram/ShareAlert2$1;)V

    .line 638
    .local v9, "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v30

    move/from16 v0, v30

    iput v0, v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->date:I

    .line 639
    sget-object v30, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v31, "mainconfig"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "hide_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_11c

    sget-object v30, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v31, "mainconfig"

    const/16 v32, 0x0

    .line 640
    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "hide_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_125

    sget-object v30, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v31, "mainconfig"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v30

    const-string v31, "hidden_sharealert"

    const/16 v32, 0x1

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    if-eqz v30, :cond_125

    .line 642
    :cond_11c
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_125
    long-to-int v0, v14

    move/from16 v16, v0

    .line 645
    .local v16, "lower_id":I
    const/16 v30, 0x20

    shr-long v30, v14, v30

    move-wide/from16 v0, v30

    long-to-int v13, v0

    .line 646
    .local v13, "high_id":I
    if-eqz v16, :cond_8f

    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v13, v0, :cond_8f

    .line 647
    if-lez v16, :cond_156

    .line 648
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_8f

    .line 650
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14a} :catch_14c

    goto/16 :goto_8f

    .line 804
    .end local v6    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    .end local v10    # "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;>;"
    .end local v13    # "high_id":I
    .end local v14    # "id":J
    .end local v16    # "lower_id":I
    .end local v19    # "resultCount":I
    .end local v20    # "search":[Ljava/lang/String;
    .end local v21    # "search1":Ljava/lang/String;
    .end local v22    # "search2":Ljava/lang/String;
    .end local v29    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_14c
    move-exception v11

    .line 805
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 623
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v21    # "search1":Ljava/lang/String;
    .restart local v22    # "search2":Ljava/lang/String;
    :cond_152
    const/16 v30, 0x0

    goto/16 :goto_56

    .line 653
    .restart local v6    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    .restart local v10    # "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;>;"
    .restart local v13    # "high_id":I
    .restart local v14    # "id":J
    .restart local v16    # "lower_id":I
    .restart local v19    # "resultCount":I
    .restart local v20    # "search":[Ljava/lang/String;
    .restart local v29    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_156
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v30, v0

    :try_start_15b
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_8f

    .line 654
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8f

    .line 659
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    .end local v13    # "high_id":I
    .end local v14    # "id":J
    .end local v16    # "lower_id":I
    :cond_177
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 661
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_33d

    .line 662
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v30

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "SELECT data, status, name FROM users WHERE uid IN(%s)"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, ","

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 663
    :cond_1b2
    :goto_1b2
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v30

    if-eqz v30, :cond_33a

    .line 664
    const/16 v30, 0x2

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v17

    .line 665
    .local v17, "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 666
    .local v24, "tName":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1d8

    .line 667
    const/16 v24, 0x0

    .line 669
    :cond_1d8
    const/16 v27, 0x0

    .line 670
    .local v27, "username":Ljava/lang/String;
    const-string v30, ";;;"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    .line 671
    .local v28, "usernamePos":I
    const/16 v30, -0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_1f6

    .line 672
    add-int/lit8 v30, v28, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 674
    :cond_1f6
    const/4 v12, 0x0

    .line 675
    .local v12, "found":I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/16 v30, 0x0

    :goto_1fe
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1b2

    aget-object v18, v20, v30

    .line 676
    .local v18, "q":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_25a

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_25a

    if-eqz v24, :cond_2ec

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_25a

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_2ec

    .line 677
    :cond_25a
    const/4 v12, 0x1

    .line 681
    :cond_25b
    :goto_25b
    if-eqz v12, :cond_336

    .line 682
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 683
    .local v8, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_1b2

    .line 684
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v30

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v26

    .line 685
    .local v26, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 686
    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;

    .line 687
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2af

    .line 688
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 690
    :cond_2af
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v12, v0, :cond_2fb

    .line 691
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 695
    :goto_2cf
    move-object/from16 v0, v26

    iput-object v0, v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 696
    iget-object v0, v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 697
    add-int/lit8 v19, v19, 0x1

    .line 698
    goto/16 :goto_1b2

    .line 678
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    .end local v26    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2ec
    if-eqz v27, :cond_25b

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_25b

    .line 679
    const/4 v12, 0x2

    goto/16 :goto_25b

    .line 693
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    .restart local v26    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2fb
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "@"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "@"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_2cf

    .line 675
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    .end local v26    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_336
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1fe

    .line 703
    .end local v12    # "found":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "q":Ljava/lang/String;
    .end local v24    # "tName":Ljava/lang/String;
    .end local v27    # "username":Ljava/lang/String;
    .end local v28    # "usernamePos":I
    :cond_33a
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 706
    :cond_33d
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_48b

    .line 707
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v30

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "SELECT data, name FROM chats WHERE uid IN(%s)"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, ","

    move-object/from16 v0, v35

    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 708
    :cond_373
    :goto_373
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v30

    if-eqz v30, :cond_488

    .line 709
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v17

    .line 710
    .restart local v17    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 711
    .restart local v24    # "tName":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_399

    .line 712
    const/16 v24, 0x0

    .line 714
    :cond_399
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_39a
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v4, v0, :cond_373

    .line 715
    aget-object v18, v20, v4

    .line 716
    .restart local v18    # "q":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_3f9

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_3f9

    if-eqz v24, :cond_484

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_3f9

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_484

    .line 717
    :cond_3f9
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 718
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_373

    .line 719
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v30

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 720
    .local v5, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 721
    if-eqz v5, :cond_373

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v30

    if-nez v30, :cond_373

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v30

    if-eqz v30, :cond_438

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    move/from16 v30, v0

    if-nez v30, :cond_438

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    move/from16 v30, v0

    if-nez v30, :cond_438

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v30, v0

    if-eqz v30, :cond_373

    .line 722
    :cond_438
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    neg-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;

    .line 723
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 724
    iput-object v5, v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 725
    iget-object v0, v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-object/from16 v30, v0

    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v31, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 726
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_373

    .line 714
    .end local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    :cond_484
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_39a

    .line 733
    .end local v4    # "a":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "q":Ljava/lang/String;
    .end local v24    # "tName":Ljava/lang/String;
    :cond_488
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 736
    :cond_48b
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 737
    .local v23, "searchResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;>;"
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_49c
    :goto_49c
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_4ba

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;

    .line 738
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    iget-object v0, v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v31, v0

    if-eqz v31, :cond_49c

    iget-object v0, v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    if-eqz v31, :cond_49c

    .line 740
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49c

    .line 744
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    :cond_4ba
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v30

    const-string v31, "SELECT u.data, u.status, u.name, u.uid FROM users as u INNER JOIN contacts as c ON u.uid = c.uid"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 745
    :cond_4d0
    :goto_4d0
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v30

    if-eqz v30, :cond_66e

    .line 746
    const/16 v30, 0x3

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v25

    .line 747
    .local v25, "uid":I
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4d0

    .line 750
    const/16 v30, 0x2

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v17

    .line 751
    .restart local v17    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 752
    .restart local v24    # "tName":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_50f

    .line 753
    const/16 v24, 0x0

    .line 755
    :cond_50f
    const/16 v27, 0x0

    .line 756
    .restart local v27    # "username":Ljava/lang/String;
    const-string v30, ";;;"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    .line 757
    .restart local v28    # "usernamePos":I
    const/16 v30, -0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_52d

    .line 758
    add-int/lit8 v30, v28, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 760
    :cond_52d
    const/4 v12, 0x0

    .line 761
    .restart local v12    # "found":I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/16 v30, 0x0

    :goto_535
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_4d0

    aget-object v18, v20, v30

    .line 762
    .restart local v18    # "q":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_591

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_591

    if-eqz v24, :cond_620

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_591

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_620

    .line 763
    :cond_591
    const/4 v12, 0x1

    .line 767
    :cond_592
    :goto_592
    if-eqz v12, :cond_66a

    .line 768
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 769
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_4d0

    .line 770
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v30

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v26

    .line 771
    .restart local v26    # "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 772
    new-instance v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;-><init>(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Lorg/telegram/ui/Telehgram/ShareAlert2$1;)V

    .line 773
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5e0

    .line 774
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 776
    :cond_5e0
    iget-object v0, v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 777
    move-object/from16 v0, v26

    iput-object v0, v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 778
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v12, v0, :cond_62f

    .line 779
    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 783
    :goto_619
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4d0

    .line 764
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    .end local v26    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_620
    if-eqz v27, :cond_592

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_592

    .line 765
    const/4 v12, 0x2

    goto/16 :goto_592

    .line 781
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    .restart local v26    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_62f
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "@"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "@"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v9, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_619

    .line 761
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    .end local v26    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_66a
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_535

    .line 789
    .end local v12    # "found":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "q":Ljava/lang/String;
    .end local v24    # "tName":Ljava/lang/String;
    .end local v25    # "uid":I
    .end local v27    # "username":Ljava/lang/String;
    .end local v28    # "usernamePos":I
    :cond_66e
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 791
    new-instance v30, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1$1;-><init>(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;->val$searchId:I

    move/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move/from16 v2, v31

    # invokes: Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->access$2100(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Ljava/util/ArrayList;I)V
    :try_end_696
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_696} :catch_14c

    goto/16 :goto_37
.end method

.class Lorg/telegram/messenger/MessagesStorage$4;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->fixNotificationSettings()V
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
    .line 607
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$4;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 611
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 612
    .local v7, "ids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    sget-object v16, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v17, "Notifications"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 613
    .local v11, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v15

    .line 614
    .local v15, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1b
    :goto_1b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_cf

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 615
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 616
    .local v10, "key":Ljava/lang/String;
    const-string v17, "notify2_"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 617
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 618
    .local v14, "value":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_55

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c1

    .line 619
    :cond_55
    const-string v17, "notify2_"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 621
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_64} :catch_88

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8d

    .line 622
    const-wide/16 v8, 0x1

    .line 632
    .local v8, "flags":J
    :goto_6f
    :try_start_6f
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_82} :catch_83
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_82} :catch_88

    goto :goto_1b

    .line 633
    :catch_83
    move-exception v4

    .line 634
    .local v4, "e":Ljava/lang/Exception;
    :try_start_84
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_1b

    .line 655
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v7    # "ids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v8    # "flags":J
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v14    # "value":Ljava/lang/Integer;
    .end local v15    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :catch_88
    move-exception v4

    .line 656
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 658
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_8c
    return-void

    .line 624
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v7    # "ids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v10    # "key":Ljava/lang/String;
    .restart local v11    # "preferences":Landroid/content/SharedPreferences;
    .restart local v14    # "value":Ljava/lang/Integer;
    .restart local v15    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_8d
    :try_start_8d
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "notifyuntil_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 625
    .local v13, "time":Ljava/lang/Integer;
    if-eqz v13, :cond_be

    .line 626
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x20

    shl-long v18, v18, v17

    const-wide/16 v20, 0x1

    or-long v8, v18, v20

    .restart local v8    # "flags":J
    goto :goto_6f

    .line 628
    .end local v8    # "flags":J
    :cond_be
    const-wide/16 v8, 0x1

    .restart local v8    # "flags":J
    goto :goto_6f

    .line 636
    .end local v8    # "flags":J
    .end local v13    # "time":Ljava/lang/Integer;
    :cond_c1
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_c4} :catch_88

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    goto/16 :goto_1b

    .line 642
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v10    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/Integer;
    :cond_cf
    :try_start_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$4;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$4;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v16

    const-string v17, "REPLACE INTO dialog_settings VALUES(?, ?)"

    invoke-virtual/range {v16 .. v17}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    .line 644
    .local v12, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_f4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_133

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 645
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 646
    const/16 v18, 0x1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 647
    const/16 v18, 0x2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 648
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_12c} :catch_12d
    .catch Ljava/lang/Throwable; {:try_start_cf .. :try_end_12c} :catch_88

    goto :goto_f4

    .line 652
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v12    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_12d
    move-exception v4

    .line 653
    .local v4, "e":Ljava/lang/Exception;
    :try_start_12e
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_131
    .catch Ljava/lang/Throwable; {:try_start_12e .. :try_end_131} :catch_88

    goto/16 :goto_8c

    .line 650
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v12    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_133
    :try_start_133
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$4;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_143} :catch_12d
    .catch Ljava/lang/Throwable; {:try_start_133 .. :try_end_143} :catch_88

    goto/16 :goto_8c
.end method

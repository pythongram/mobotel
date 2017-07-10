.class Lorg/telegram/messenger/MessagesStorage$28;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat_id:I

.field final synthetic val$isOut:I

.field final synthetic val$random_ids:Ljava/util/ArrayList;

.field final synthetic val$readTime:I

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;IIII)V
    .registers 7
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1648
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$28;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$28;->val$random_ids:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$28;->val$chat_id:I

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$28;->val$isOut:I

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$28;->val$time:I

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$28;->val$readTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 26

    .prologue
    .line 1652
    const v14, 0x7fffffff

    .line 1653
    .local v14, "minDate":I
    :try_start_3
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 1654
    .local v10, "messages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1655
    .local v13, "midsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1657
    .local v12, "mids":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->val$random_ids:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_ec

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v17

    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v19, "SELECT mid, ttl FROM messages WHERE uid = %d AND out = %d AND read_state != 0 AND ttl > 0 AND date <= %d AND send_state = 0 AND media != 1"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->val$chat_id:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const/16 v24, 0x20

    shl-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->val$isOut:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->val$time:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    .line 1663
    .local v5, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_73
    :goto_73
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v17

    if-eqz v17, :cond_12b

    .line 1664
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 1665
    .local v16, "ttl":I
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    .line 1666
    .local v11, "mid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->val$random_ids:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9d

    .line 1667
    int-to-long v0, v11

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    :cond_9d
    if-lez v16, :cond_73

    .line 1672
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->val$time:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->val$readTime:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_124

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->val$time:I

    move/from16 v17, v0

    :goto_b7
    add-int v6, v17, v16

    .line 1673
    .local v6, "date":I
    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1674
    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1675
    .local v3, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v3, :cond_cd

    .line 1676
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1677
    .restart local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v10, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1679
    :cond_cd
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-eqz v17, :cond_da

    .line 1680
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    :cond_da
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1683
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e6} :catch_e7

    goto :goto_73

    .line 1715
    .end local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v6    # "date":I
    .end local v10    # "messages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v11    # "mid":I
    .end local v12    # "mids":Ljava/lang/StringBuilder;
    .end local v13    # "midsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v16    # "ttl":I
    :catch_e7
    move-exception v7

    .line 1716
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1718
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_eb
    :goto_eb
    return-void

    .line 1660
    .restart local v10    # "messages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .restart local v12    # "mids":Ljava/lang/StringBuilder;
    .restart local v13    # "midsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_ec
    :try_start_ec
    const-string v17, ","

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->val$random_ids:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .line 1661
    .local v8, "ids":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v17

    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v19, "SELECT m.mid, m.ttl FROM messages as m INNER JOIN randoms as r ON m.mid = r.mid WHERE r.random_id IN (%s)"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v8, v20, v21

    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    .restart local v5    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    goto/16 :goto_73

    .line 1672
    .end local v8    # "ids":Ljava/lang/String;
    .restart local v11    # "mid":I
    .restart local v16    # "ttl":I
    :cond_124
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->val$readTime:I

    move/from16 v17, v0

    goto :goto_b7

    .line 1685
    .end local v11    # "mid":I
    .end local v16    # "ttl":I
    :cond_12b
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->val$random_ids:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_142

    .line 1688
    new-instance v17, Lorg/telegram/messenger/MessagesStorage$28$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lorg/telegram/messenger/MessagesStorage$28$1;-><init>(Lorg/telegram/messenger/MessagesStorage$28;Ljava/util/ArrayList;)V

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1697
    :cond_142
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-eqz v17, :cond_eb

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v17

    const-string v18, "REPLACE INTO enc_tasks_v2 VALUES(?, ?)"

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v15

    .line 1700
    .local v15, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_166
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_1a7

    .line 1701
    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1702
    .local v9, "key":I
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1703
    .restart local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_179
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_1a4

    .line 1704
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1705
    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1706
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1707
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1703
    add-int/lit8 v4, v4, 0x1

    goto :goto_179

    .line 1700
    :cond_1a4
    add-int/lit8 v2, v2, 0x1

    goto :goto_166

    .line 1710
    .end local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "b":I
    .end local v9    # "key":I
    :cond_1a7
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1711
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$28;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v17

    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v19, "UPDATE messages SET ttl = 0 WHERE mid IN(%s)"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1713
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v10}, Lorg/telegram/messenger/MessagesController;->didAddedNewTask(ILandroid/util/SparseArray;)V
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_1ed} :catch_e7

    goto/16 :goto_eb
.end method

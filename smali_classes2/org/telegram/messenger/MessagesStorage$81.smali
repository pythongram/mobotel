.class Lorg/telegram/messenger/MessagesStorage$81;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->unpinAllDialogsExceptNew(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$dids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 6079
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$81;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$81;->val$dids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 6083
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 6084
    .local v12, "unpinnedDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesStorage$81;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v13}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "SELECT did FROM dialogs WHERE pinned != 0 AND did NOT IN (%s)"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, ","

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$81;->val$dids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 6085
    .local v3, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_34
    :goto_34
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v13

    if-eqz v13, :cond_54

    .line 6086
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    .line 6087
    .local v8, "did":J
    long-to-int v13, v8

    if-eqz v13, :cond_34

    .line 6088
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_34

    .line 6130
    .end local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v8    # "did":J
    .end local v12    # "unpinnedDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_4f
    move-exception v7

    .line 6131
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 6133
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_53
    :goto_53
    return-void

    .line 6091
    .restart local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v12    # "unpinnedDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_54
    :try_start_54
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 6092
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_53

    .line 6093
    const/4 v10, 0x0

    .line 6094
    .local v10, "minDate":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesStorage$81;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v13}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    const-string v14, "SELECT min(date), min(date_i) FROM dialogs WHERE (date != 0 OR date_i != 0) AND pinned = 0"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 6095
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v13

    if-eqz v13, :cond_87

    .line 6096
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    .line 6097
    .local v4, "date":I
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    .line 6098
    .local v5, "date_i":I
    if-eqz v4, :cond_105

    if-eqz v5, :cond_105

    .line 6099
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 6106
    .end local v4    # "date":I
    .end local v5    # "date_i":I
    :cond_87
    :goto_87
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 6108
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesStorage$81;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v13}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    const-string v14, "UPDATE dialogs SET pinned = ? WHERE did = ?"

    invoke-virtual {v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    .line 6109
    .local v11, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_99
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_11d

    .line 6110
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 6112
    .restart local v8    # "did":J
    const/4 v6, 0x0

    .line 6113
    .local v6, "dialogDate":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesStorage$81;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v13}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SELECT date FROM dialogs WHERE did = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 6114
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v13

    if-eqz v13, :cond_d7

    .line 6115
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    .line 6117
    :cond_d7
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 6119
    if-gt v6, v10, :cond_10d

    .line 6120
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesStorage$81;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v13}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DELETE FROM dialogs WHERE did = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 6109
    :goto_102
    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    .line 6100
    .end local v2    # "a":I
    .end local v6    # "dialogDate":I
    .end local v8    # "did":J
    .end local v11    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    .restart local v4    # "date":I
    .restart local v5    # "date_i":I
    :cond_105
    if-nez v4, :cond_10a

    .line 6101
    move v10, v5

    goto/16 :goto_87

    .line 6103
    :cond_10a
    move v10, v4

    goto/16 :goto_87

    .line 6123
    .end local v4    # "date":I
    .end local v5    # "date_i":I
    .restart local v2    # "a":I
    .restart local v6    # "dialogDate":I
    .restart local v8    # "did":J
    .restart local v11    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_10d
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 6124
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6125
    const/4 v13, 0x2

    invoke-virtual {v11, v13, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6126
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_102

    .line 6128
    .end local v6    # "dialogDate":I
    .end local v8    # "did":J
    :cond_11d
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_120} :catch_4f

    goto/16 :goto_53
.end method

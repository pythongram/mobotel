.class Lorg/telegram/messenger/MessagesStorage$48;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getMessages(JIIIIIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$dialog_id:J

.field final synthetic val$isChannel:Z

.field final synthetic val$loadIndex:I

.field final synthetic val$load_type:I

.field final synthetic val$max_id:I

.field final synthetic val$minDate:I

.field final synthetic val$offset_date:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;IIZJIIIII)V
    .registers 13
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2678
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$count:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$isChannel:Z

    iput-wide p5, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    iput p7, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    iput p8, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    iput p9, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$offset_date:I

    iput p10, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$classGuid:I

    iput p11, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$loadIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 65

    .prologue
    .line 2681
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 2682
    .local v5, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    const/4 v15, 0x0

    .line 2683
    .local v15, "count_unread":I
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$count:I

    .line 2684
    .local v8, "count_query":I
    const/16 v54, 0x0

    .line 2685
    .local v54, "offset_query":I
    const/4 v13, 0x0

    .line 2686
    .local v13, "min_unread_id":I
    const/4 v14, 0x0

    .line 2687
    .local v14, "last_message_id":I
    const/16 v21, 0x0

    .line 2688
    .local v21, "queryFromServer":Z
    const/16 v16, 0x0

    .line 2689
    .local v16, "max_unread_date":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    int-to-long v0, v4

    move-wide/from16 v46, v0

    .line 2690
    .local v46, "messageMaxId":J
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    move/from16 v42, v0

    .line 2691
    .local v42, "max_id_query":I
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    .line 2692
    .local v9, "max_id_override":I
    const/16 v24, 0x0

    .line 2693
    .local v24, "channelId":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$isChannel:Z

    if-eqz v4, :cond_33

    .line 2694
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    long-to-int v4, v6

    neg-int v0, v4

    move/from16 v24, v0

    .line 2696
    :cond_33
    const-wide/16 v6, 0x0

    cmp-long v4, v46, v6

    if-eqz v4, :cond_43

    if-eqz v24, :cond_43

    .line 2697
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v46, v46, v6

    .line 2699
    :cond_43
    const/16 v19, 0x0

    .line 2700
    .local v19, "isEnd":Z
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    const-wide/32 v10, 0xbdb28

    cmp-long v4, v6, v10

    if-nez v4, :cond_548

    const/16 v52, 0xa

    .line 2702
    .local v52, "num":I
    :goto_52
    :try_start_52
    new-instance v60, Ljava/util/ArrayList;

    invoke-direct/range {v60 .. v60}, Ljava/util/ArrayList;-><init>()V

    .line 2703
    .local v60, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2704
    .local v25, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    .line 2705
    .local v57, "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v55, Ljava/util/HashMap;

    invoke-direct/range {v55 .. v55}, Ljava/util/HashMap;-><init>()V

    .line 2706
    .local v55, "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    new-instance v56, Ljava/util/HashMap;

    invoke-direct/range {v56 .. v56}, Ljava/util/HashMap;-><init>()V

    .line 2709
    .local v56, "replyMessageRandomOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    long-to-int v0, v6

    move/from16 v40, v0

    .line 2710
    .local v40, "lower_id":I
    if-eqz v40, :cond_c47

    .line 2711
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_54c

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    if-nez v4, :cond_54c

    .line 2712
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT inbox_max, unread_count, date FROM dialogs WHERE did = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2713
    .local v27, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 2714
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    add-int/lit8 v13, v4, 0x1

    .line 2715
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    .line 2716
    const/4 v4, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 2718
    :cond_c4
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2796
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_c7
    :goto_c7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT start FROM messages_holes WHERE uid = %d AND start IN (0, 1)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2797
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_7bd

    .line 2798
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7b9

    const/16 v19, 0x1

    .line 2799
    :goto_100
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2818
    :goto_103
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_11a

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_11a

    if-eqz v21, :cond_936

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_936

    .line 2819
    :cond_11a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT max(mid) FROM messages WHERE uid = %d AND mid > 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2820
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_14e

    .line 2821
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    .line 2823
    :cond_14e
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2825
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1f4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$offset_date:I

    if-eqz v4, :cond_1f4

    .line 2829
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT max(mid) FROM messages WHERE uid = %d AND date <= %d AND mid > 0"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$offset_date:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2830
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_82b

    .line 2831
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v58

    .line 2835
    .local v58, "startMid":I
    :goto_19d
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2836
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT min(mid) FROM messages WHERE uid = %d AND date >= %d AND mid > 0"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$offset_date:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2837
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_82f

    .line 2838
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v31

    .line 2842
    .local v31, "endMid":I
    :goto_1df
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2843
    const/4 v4, -0x1

    move/from16 v0, v58

    if-eq v0, v4, :cond_1f4

    const/4 v4, -0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_1f4

    .line 2844
    move/from16 v0, v58

    move/from16 v1, v31

    if-ne v0, v1, :cond_833

    .line 2845
    move/from16 v42, v58

    .line 2870
    .end local v31    # "endMid":I
    .end local v58    # "startMid":I
    :cond_1f4
    :goto_1f4
    if-eqz v42, :cond_8d8

    const/16 v26, 0x1

    .line 2871
    .local v26, "containMessage":Z
    :goto_1f8
    if-eqz v26, :cond_23a

    .line 2872
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT start FROM messages_holes WHERE uid = %d AND start < %d AND end > %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2873
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_237

    .line 2874
    const/16 v26, 0x0

    .line 2876
    :cond_237
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2879
    :cond_23a
    if-eqz v26, :cond_932

    .line 2880
    const-wide/16 v36, 0x0

    .line 2881
    .local v36, "holeMessageMaxId":J
    const-wide/16 v38, 0x1

    .line 2882
    .local v38, "holeMessageMinId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT start FROM messages_holes WHERE uid = %d AND start >= %d ORDER BY start ASC LIMIT 1"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2883
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_288

    .line 2884
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v36, v0

    .line 2885
    if-eqz v24, :cond_288

    .line 2886
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v36, v36, v6

    .line 2889
    :cond_288
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2890
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT end FROM messages_holes WHERE uid = %d AND end <= %d ORDER BY end DESC LIMIT 1"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2891
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_2d3

    .line 2892
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v38, v0

    .line 2893
    if-eqz v24, :cond_2d3

    .line 2894
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v38, v38, v6

    .line 2901
    :cond_2d3
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2902
    const-wide/16 v6, 0x0

    cmp-long v4, v36, v6

    if-nez v4, :cond_2e2

    const-wide/16 v6, 0x1

    cmp-long v4, v38, v6

    if-eqz v4, :cond_8dc

    .line 2903
    :cond_2e2
    const-wide/16 v6, 0x0

    cmp-long v4, v36, v6

    if-nez v4, :cond_2f5

    .line 2904
    const-wide/32 v36, 0x3b9aca00

    .line 2905
    if-eqz v24, :cond_2f5

    .line 2906
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v36, v36, v6

    .line 2909
    :cond_2f5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT * FROM (SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid <= %d AND m.mid >= %d ORDER BY m.date DESC, m.mid DESC LIMIT %d) UNION SELECT * FROM (SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d AND m.mid <= %d ORDER BY m.date ASC, m.mid ASC LIMIT %d)"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    .line 2910
    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    div-int/lit8 v12, v8, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x7

    div-int/lit8 v12, v8, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 2909
    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 3055
    .end local v26    # "containMessage":Z
    .end local v36    # "holeMessageMaxId":J
    .end local v38    # "holeMessageMinId":J
    :goto_358
    if-eqz v27, :cond_fcf

    .line 3056
    :cond_35a
    :goto_35a
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_fcc

    .line 3057
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v29

    .line 3058
    .local v29, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v29, :cond_35a

    .line 3059
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-static {v0, v4, v6}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v43

    .line 3060
    .local v43, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3061
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessageObject;->setUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;I)V

    .line 3062
    const/4 v4, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3063
    const/4 v4, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 3064
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-object/from16 v0, v43

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 3065
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_3b7

    .line 3066
    const/4 v4, 0x7

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 3068
    :cond_3b7
    if-eqz v40, :cond_3c5

    .line 3069
    const/16 v4, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 3071
    :cond_3c5
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3073
    move-object/from16 v0, v43

    move-object/from16 v1, v60

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3075
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    if-nez v4, :cond_3e5

    move-object/from16 v0, v43

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-eqz v4, :cond_486

    .line 3076
    :cond_3e5
    const/4 v4, 0x6

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_41d

    .line 3077
    const/4 v4, 0x6

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v29

    .line 3078
    if-eqz v29, :cond_41d

    .line 3079
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-static {v0, v4, v6}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v4

    move-object/from16 v0, v43

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 3080
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3081
    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_41d

    .line 3082
    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v60

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3086
    :cond_41d
    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v4, :cond_486

    .line 3087
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    if-eqz v4, :cond_f80

    .line 3088
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    int-to-long v0, v4

    move-wide/from16 v44, v0

    .line 3089
    .local v44, "messageId":J
    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_444

    .line 3090
    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v44, v44, v6

    .line 3092
    :cond_444
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_459

    .line 3093
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3095
    :cond_459
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/ArrayList;

    .line 3096
    .local v48, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-nez v48, :cond_47f

    .line 3097
    new-instance v48, Ljava/util/ArrayList;

    .end local v48    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 3098
    .restart local v48    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3100
    :cond_47f
    move-object/from16 v0, v48

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3114
    .end local v44    # "messageId":J
    .end local v48    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_486
    :goto_486
    const/4 v4, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 3115
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lez v4, :cond_4a2

    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v4, :cond_4a2

    .line 3116
    const/4 v4, 0x0

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 3118
    :cond_4a2
    if-nez v40, :cond_4b8

    const/4 v4, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4b8

    .line 3119
    const/4 v4, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    move-object/from16 v0, v43

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 3121
    :cond_4b8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    long-to-int v4, v6

    if-nez v4, :cond_35a

    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_35a

    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    :try_end_4cb
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_4cb} :catch_50e
    .catchall {:try_start_52 .. :try_end_4cb} :catchall_6ef

    if-eqz v4, :cond_35a

    .line 3123
    :try_start_4cd
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT date FROM enc_tasks_v2 WHERE mid = %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, v43

    iget v12, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v28

    .line 3124
    .local v28, "cursor2":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_503

    .line 3125
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    .line 3127
    :cond_503
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_506
    .catch Ljava/lang/Exception; {:try_start_4cd .. :try_end_506} :catch_508
    .catchall {:try_start_4cd .. :try_end_506} :catchall_6ef

    goto/16 :goto_35a

    .line 3128
    .end local v28    # "cursor2":Lorg/telegram/SQLite/SQLiteCursor;
    :catch_508
    move-exception v30

    .line 3129
    .local v30, "e":Ljava/lang/Exception;
    :try_start_509
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_50c
    .catch Ljava/lang/Exception; {:try_start_509 .. :try_end_50c} :catch_50e
    .catchall {:try_start_509 .. :try_end_50c} :catchall_6ef

    goto/16 :goto_35a

    .line 3231
    .end local v25    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v29    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v30    # "e":Ljava/lang/Exception;
    .end local v40    # "lower_id":I
    .end local v43    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v55    # "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .end local v56    # "replyMessageRandomOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .end local v57    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v60    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_50e
    move-exception v30

    .line 3232
    .restart local v30    # "e":Ljava/lang/Exception;
    :try_start_50f
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3233
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3234
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3235
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_521
    .catchall {:try_start_50f .. :try_end_521} :catchall_6ef

    .line 3237
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$offset_date:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$classGuid:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$isChannel:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$loadIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v4 .. v21}, Lorg/telegram/messenger/MessagesController;->processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V

    .line 3239
    .end local v30    # "e":Ljava/lang/Exception;
    :goto_547
    return-void

    .line 2700
    .end local v52    # "num":I
    :cond_548
    const/16 v52, 0x1

    goto/16 :goto_52

    .line 2719
    .restart local v25    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v40    # "lower_id":I
    .restart local v52    # "num":I
    .restart local v55    # "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .restart local v56    # "replyMessageRandomOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .restart local v57    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v60    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_54c
    :try_start_54c
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_c7

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_c7

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_c7

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    if-nez v4, :cond_c7

    .line 2720
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_649

    .line 2721
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT inbox_max, unread_count, date FROM dialogs WHERE did = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2722
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_5c6

    .line 2723
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    move/from16 v42, v13

    int-to-long v0, v13

    move-wide/from16 v46, v0

    .line 2724
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    .line 2725
    const/4 v4, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 2726
    const/16 v21, 0x1

    .line 2727
    const-wide/16 v6, 0x0

    cmp-long v4, v46, v6

    if-eqz v4, :cond_5c6

    if-eqz v24, :cond_5c6

    .line 2728
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v46, v46, v6

    .line 2731
    :cond_5c6
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2732
    if-nez v21, :cond_662

    .line 2733
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT min(mid), max(date) FROM messages WHERE uid = %d AND out = 0 AND read_state IN(0,2) AND mid > 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2734
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_606

    .line 2735
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 2736
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 2738
    :cond_606
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2739
    if-eqz v13, :cond_649

    .line 2740
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT COUNT(*) FROM messages WHERE uid = %d AND mid >= %d AND out = 0 AND read_state IN(0,2)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2741
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_646

    .line 2742
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    .line 2744
    :cond_646
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2781
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_649
    :goto_649
    if-gt v8, v15, :cond_64f

    move/from16 v0, v52

    if-ge v15, v0, :cond_7b3

    .line 2782
    :cond_64f
    add-int/lit8 v4, v15, 0xa

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2783
    move/from16 v0, v52

    if-ge v15, v0, :cond_c7

    .line 2784
    const/4 v15, 0x0

    .line 2785
    const/4 v13, 0x0

    .line 2786
    const-wide/16 v46, 0x0

    .line 2787
    const/4 v14, 0x0

    .line 2788
    const/16 v21, 0x0

    goto/16 :goto_c7

    .line 2746
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_662
    if-nez v42, :cond_719

    .line 2747
    const/16 v33, 0x0

    .line 2748
    .local v33, "existingUnreadCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT COUNT(*) FROM messages WHERE uid = %d AND mid > 0 AND out = 0 AND read_state IN(0,2)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2749
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_69a

    .line 2750
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v33

    .line 2752
    :cond_69a
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2753
    move/from16 v0, v33

    if-ne v0, v15, :cond_649

    .line 2754
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT min(mid) FROM messages WHERE uid = %d AND out = 0 AND read_state IN(0,2) AND mid > 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2755
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_6ea

    .line 2756
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    move/from16 v42, v13

    int-to-long v0, v13

    move-wide/from16 v46, v0

    .line 2757
    const-wide/16 v6, 0x0

    cmp-long v4, v46, v6

    if-eqz v4, :cond_6ea

    if-eqz v24, :cond_6ea

    .line 2758
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v46, v46, v6

    .line 2761
    :cond_6ea
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_6ed
    .catch Ljava/lang/Exception; {:try_start_54c .. :try_end_6ed} :catch_50e
    .catchall {:try_start_54c .. :try_end_6ed} :catchall_6ef

    goto/16 :goto_649

    .line 3237
    .end local v25    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v33    # "existingUnreadCount":I
    .end local v40    # "lower_id":I
    .end local v55    # "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .end local v56    # "replyMessageRandomOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .end local v57    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v60    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_6ef
    move-exception v4

    move-object/from16 v61, v4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$offset_date:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$classGuid:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$isChannel:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$loadIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v4 .. v21}, Lorg/telegram/messenger/MessagesController;->processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V

    throw v61

    .line 2764
    .restart local v25    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v40    # "lower_id":I
    .restart local v55    # "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .restart local v56    # "replyMessageRandomOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .restart local v57    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v60    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_719
    :try_start_719
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT start, end FROM messages_holes WHERE uid = %d AND start < %d AND end > %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2765
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-nez v4, :cond_7b0

    const/16 v26, 0x1

    .line 2766
    .restart local v26    # "containMessage":Z
    :goto_756
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2768
    if-eqz v26, :cond_649

    .line 2769
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT min(mid) FROM messages WHERE uid = %d AND out = 0 AND read_state IN(0,2) AND mid > %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2770
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_7ab

    .line 2771
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v42

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v46, v0

    .line 2772
    const-wide/16 v6, 0x0

    cmp-long v4, v46, v6

    if-eqz v4, :cond_7ab

    if-eqz v24, :cond_7ab

    .line 2773
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v46, v46, v6

    .line 2776
    :cond_7ab
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto/16 :goto_649

    .line 2765
    .end local v26    # "containMessage":Z
    :cond_7b0
    const/16 v26, 0x0

    goto :goto_756

    .line 2791
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_7b3
    sub-int v54, v15, v8

    .line 2792
    add-int/lit8 v8, v8, 0xa

    goto/16 :goto_c7

    .line 2798
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_7b9
    const/16 v19, 0x0

    goto/16 :goto_100

    .line 2801
    :cond_7bd
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2802
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT min(mid) FROM messages WHERE uid = %d AND mid > 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2803
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_826

    .line 2804
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v49

    .line 2805
    .local v49, "mid":I
    if-eqz v49, :cond_826

    .line 2806
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string v6, "REPLACE INTO messages_holes VALUES(?, ?, ?)"

    invoke-virtual {v4, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v59

    .line 2807
    .local v59, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual/range {v59 .. v59}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 2808
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 2809
    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2810
    const/4 v4, 0x3

    move-object/from16 v0, v59

    move/from16 v1, v49

    invoke-virtual {v0, v4, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2811
    invoke-virtual/range {v59 .. v59}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 2812
    invoke-virtual/range {v59 .. v59}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2815
    .end local v49    # "mid":I
    .end local v59    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_826
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto/16 :goto_103

    .line 2833
    :cond_82b
    const/16 v58, -0x1

    .restart local v58    # "startMid":I
    goto/16 :goto_19d

    .line 2840
    :cond_82f
    const/16 v31, -0x1

    .restart local v31    # "endMid":I
    goto/16 :goto_1df

    .line 2847
    :cond_833
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT start FROM messages_holes WHERE uid = %d AND start <= %d AND end > %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2848
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_870

    .line 2849
    const/16 v58, -0x1

    .line 2851
    :cond_870
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2852
    const/4 v4, -0x1

    move/from16 v0, v58

    if-eq v0, v4, :cond_1f4

    .line 2853
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT start FROM messages_holes WHERE uid = %d AND start <= %d AND end > %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2854
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_8b5

    .line 2855
    const/16 v31, -0x1

    .line 2857
    :cond_8b5
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2858
    const/4 v4, -0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_1f4

    .line 2859
    move/from16 v9, v31

    .line 2860
    move/from16 v42, v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v46, v0

    .line 2861
    const-wide/16 v6, 0x0

    cmp-long v4, v46, v6

    if-eqz v4, :cond_1f4

    if-eqz v24, :cond_1f4

    .line 2862
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v46, v46, v6

    goto/16 :goto_1f4

    .line 2870
    .end local v31    # "endMid":I
    .end local v58    # "startMid":I
    :cond_8d8
    const/16 v26, 0x0

    goto/16 :goto_1f8

    .line 2912
    .restart local v26    # "containMessage":Z
    .restart local v36    # "holeMessageMaxId":J
    .restart local v38    # "holeMessageMinId":J
    :cond_8dc
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT * FROM (SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid <= %d ORDER BY m.date DESC, m.mid DESC LIMIT %d) UNION SELECT * FROM (SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d ORDER BY m.date ASC, m.mid ASC LIMIT %d)"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    .line 2913
    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    div-int/lit8 v12, v8, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    div-int/lit8 v12, v8, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 2912
    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_358

    .line 2916
    .end local v36    # "holeMessageMaxId":J
    .end local v38    # "holeMessageMinId":J
    :cond_932
    const/16 v27, 0x0

    goto/16 :goto_358

    .line 2918
    .end local v26    # "containMessage":Z
    :cond_936
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_a1f

    .line 2919
    const-wide/16 v34, 0x0

    .line 2920
    .local v34, "holeMessageId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT start, end FROM messages_holes WHERE uid = %d AND start >= %d AND start != 1 AND end != 1 ORDER BY start ASC LIMIT 1"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2921
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_98b

    .line 2922
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    .line 2923
    if-eqz v24, :cond_98b

    .line 2924
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v34, v34, v6

    .line 2927
    :cond_98b
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2928
    const-wide/16 v6, 0x0

    cmp-long v4, v34, v6

    if-eqz v4, :cond_9dd

    .line 2929
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.date >= %d AND m.mid > %d AND m.mid <= %d ORDER BY m.date ASC, m.mid ASC LIMIT %d"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_358

    .line 2931
    :cond_9dd
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.date >= %d AND m.mid > %d ORDER BY m.date ASC, m.mid ASC LIMIT %d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_358

    .line 2933
    .end local v34    # "holeMessageId":J
    :cond_a1f
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    if-eqz v4, :cond_b4f

    .line 2934
    const-wide/16 v6, 0x0

    cmp-long v4, v46, v6

    if-eqz v4, :cond_b0d

    .line 2935
    const-wide/16 v34, 0x0

    .line 2936
    .restart local v34    # "holeMessageId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT end FROM messages_holes WHERE uid = %d AND end <= %d ORDER BY end DESC LIMIT 1"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2937
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_a79

    .line 2938
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    .line 2939
    if-eqz v24, :cond_a79

    .line 2940
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v34, v34, v6

    .line 2943
    :cond_a79
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2944
    const-wide/16 v6, 0x0

    cmp-long v4, v34, v6

    if-eqz v4, :cond_acb

    .line 2945
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.date <= %d AND m.mid < %d AND (m.mid >= %d OR m.mid < 0) ORDER BY m.date DESC, m.mid DESC LIMIT %d"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_358

    .line 2947
    :cond_acb
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.date <= %d AND m.mid < %d ORDER BY m.date DESC, m.mid DESC LIMIT %d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_358

    .line 2950
    .end local v34    # "holeMessageId":J
    :cond_b0d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.date <= %d ORDER BY m.date DESC, m.mid DESC LIMIT %d,%d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_358

    .line 2953
    :cond_b4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT max(mid) FROM messages WHERE uid = %d AND mid > 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2954
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_b83

    .line 2955
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    .line 2957
    :cond_b83
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2959
    const-wide/16 v34, 0x0

    .line 2960
    .restart local v34    # "holeMessageId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT max(end) FROM messages_holes WHERE uid = %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2961
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_bc9

    .line 2962
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    .line 2963
    if-eqz v24, :cond_bc9

    .line 2964
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v34, v34, v6

    .line 2967
    :cond_bc9
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2968
    const-wide/16 v6, 0x0

    cmp-long v4, v34, v6

    if-eqz v4, :cond_c10

    .line 2969
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND (m.mid >= %d OR m.mid < 0) ORDER BY m.date DESC, m.mid DESC LIMIT %d,%d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_358

    .line 2971
    :cond_c10
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d,%d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_358

    .line 2975
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v34    # "holeMessageId":J
    :cond_c47
    const/16 v19, 0x1

    .line 2977
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_d0f

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    if-nez v4, :cond_d0f

    .line 2978
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT min(mid) FROM messages WHERE uid = %d AND mid < 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2979
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_c8a

    .line 2980
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 2982
    :cond_c8a
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2984
    const/16 v51, 0x0

    .line 2985
    .local v51, "min_unread_id2":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT max(mid), max(date) FROM messages WHERE uid = %d AND out = 0 AND read_state IN(0,2) AND mid < 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2986
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_cca

    .line 2987
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v51

    .line 2988
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 2990
    :cond_cca
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2991
    if-eqz v51, :cond_d0f

    .line 2992
    move/from16 v13, v51

    .line 2993
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT COUNT(*) FROM messages WHERE uid = %d AND mid <= %d AND out = 0 AND read_state IN(0,2)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2994
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_d0c

    .line 2995
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    .line 2997
    :cond_d0c
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3001
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v51    # "min_unread_id2":I
    :cond_d0f
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_d1d

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_daa

    .line 3002
    :cond_d1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT min(mid) FROM messages WHERE uid = %d AND mid < 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 3003
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_d51

    .line 3004
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    .line 3006
    :cond_d51
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3008
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT * FROM (SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid <= %d ORDER BY m.mid DESC LIMIT %d) UNION SELECT * FROM (SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d ORDER BY m.mid ASC LIMIT %d)"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    .line 3009
    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    div-int/lit8 v12, v8, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    div-int/lit8 v12, v8, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 3008
    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_358

    .line 3010
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_daa
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_dec

    .line 3011
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid < %d ORDER BY m.mid DESC LIMIT %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    goto/16 :goto_358

    .line 3012
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_dec
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    if-eqz v4, :cond_e75

    .line 3013
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    if-eqz v4, :cond_e33

    .line 3014
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d ORDER BY m.mid ASC LIMIT %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    goto/16 :goto_358

    .line 3016
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_e33
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.date <= %d ORDER BY m.mid ASC LIMIT %d,%d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    goto/16 :goto_358

    .line 3019
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_e75
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_f31

    .line 3020
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT min(mid) FROM messages WHERE uid = %d AND mid < 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 3021
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_eb0

    .line 3022
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    .line 3024
    :cond_eb0
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3026
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT max(mid), max(date) FROM messages WHERE uid = %d AND out = 0 AND read_state IN(0,2) AND mid < 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 3027
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_eee

    .line 3028
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 3029
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 3031
    :cond_eee
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3032
    if-eqz v13, :cond_f31

    .line 3033
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT COUNT(*) FROM messages WHERE uid = %d AND mid <= %d AND out = 0 AND read_state IN(0,2)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 3034
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_f2e

    .line 3035
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    .line 3037
    :cond_f2e
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3041
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_f31
    if-gt v8, v15, :cond_f37

    move/from16 v0, v52

    if-ge v15, v0, :cond_f7b

    .line 3042
    :cond_f37
    add-int/lit8 v4, v15, 0xa

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 3043
    move/from16 v0, v52

    if-ge v15, v0, :cond_f44

    .line 3044
    const/4 v15, 0x0

    .line 3045
    const/4 v13, 0x0

    .line 3046
    const/4 v14, 0x0

    .line 3052
    :cond_f44
    :goto_f44
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d ORDER BY m.mid ASC LIMIT %d,%d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    goto/16 :goto_358

    .line 3049
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_f7b
    sub-int v54, v15, v8

    .line 3050
    add-int/lit8 v8, v8, 0xa

    goto :goto_f44

    .line 3102
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v29    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v43    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_f80
    move-object/from16 v0, v43

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f9d

    .line 3103
    move-object/from16 v0, v43

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3105
    :cond_f9d
    move-object/from16 v0, v43

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/ArrayList;

    .line 3106
    .restart local v48    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-nez v48, :cond_fc3

    .line 3107
    new-instance v48, Ljava/util/ArrayList;

    .end local v48    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 3108
    .restart local v48    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v43

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v56

    move-object/from16 v1, v48

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3110
    :cond_fc3
    move-object/from16 v0, v48

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_486

    .line 3134
    .end local v29    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v43    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v48    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_fcc
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3137
    :cond_fcf
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/messenger/MessagesStorage$48$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/telegram/messenger/MessagesStorage$48$1;-><init>(Lorg/telegram/messenger/MessagesStorage$48;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3163
    if-eqz v40, :cond_1053

    .line 3164
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_ff4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_ff4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1037

    if-eqz v21, :cond_1037

    :cond_ff4
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1037

    .line 3165
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v50, v0

    .line 3166
    .local v50, "minId":I
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v41, v0

    .line 3167
    .local v41, "maxId":I
    move/from16 v0, v50

    move/from16 v1, v42

    if-gt v0, v1, :cond_1029

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_1037

    .line 3168
    :cond_1029
    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->clear()V

    .line 3169
    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->clear()V

    .line 3170
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 3171
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3174
    .end local v41    # "maxId":I
    .end local v50    # "minId":I
    :cond_1037
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1045

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1053

    :cond_1045
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1053

    .line 3175
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3178
    :cond_1053
    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_119d

    .line 3179
    invoke-virtual/range {v55 .. v55}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10fe

    .line 3180
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data, mid, date FROM messages WHERE mid IN(%s)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, ","

    move-object/from16 v0, v57

    invoke-static {v12, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 3184
    :cond_1084
    :goto_1084
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_115f

    .line 3185
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v29

    .line 3186
    .restart local v29    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v29, :cond_1084

    .line 3187
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-static {v0, v4, v6}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v43

    .line 3188
    .restart local v43    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3189
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3190
    const/4 v4, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 3191
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-object/from16 v0, v43

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 3193
    move-object/from16 v0, v43

    move-object/from16 v1, v60

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3195
    invoke-virtual/range {v55 .. v55}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1125

    .line 3196
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 3197
    .local v23, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz v23, :cond_1084

    .line 3198
    const/16 v22, 0x0

    .local v22, "a":I
    :goto_10e5
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_1084

    .line 3199
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v43

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 3198
    add-int/lit8 v22, v22, 0x1

    goto :goto_10e5

    .line 3182
    .end local v22    # "a":I
    .end local v23    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v29    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v43    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_10fe
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT m.data, m.mid, m.date, r.random_id FROM randoms as r INNER JOIN messages as m ON r.mid = m.mid WHERE r.random_id IN(%s)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, ","

    move-object/from16 v0, v57

    invoke-static {v12, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_1084

    .line 3203
    .restart local v29    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v43    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1125
    const/4 v4, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 3204
    .restart local v23    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz v23, :cond_1084

    .line 3205
    const/16 v22, 0x0

    .restart local v22    # "a":I
    :goto_113c
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_1084

    .line 3206
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3207
    .local v53, "object":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v43

    move-object/from16 v1, v53

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 3208
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v53

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    .line 3205
    add-int/lit8 v22, v22, 0x1

    goto :goto_113c

    .line 3214
    .end local v22    # "a":I
    .end local v23    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v29    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v43    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v53    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_115f
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3215
    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_119d

    .line 3216
    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1170
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_119d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map$Entry;

    .line 3217
    .local v32, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 3218
    .restart local v23    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    const/16 v22, 0x0

    .restart local v22    # "a":I
    :goto_1184
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_1170

    .line 3219
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    const-wide/16 v10, 0x0

    iput-wide v10, v4, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    .line 3218
    add-int/lit8 v22, v22, 0x1

    goto :goto_1184

    .line 3225
    .end local v22    # "a":I
    .end local v23    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v32    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    :cond_119d
    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11b4

    .line 3226
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string v6, ","

    move-object/from16 v0, v60

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3228
    :cond_11b4
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11cb

    .line 3229
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string v6, ","

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_11cb
    .catch Ljava/lang/Exception; {:try_start_719 .. :try_end_11cb} :catch_50e
    .catchall {:try_start_719 .. :try_end_11cb} :catchall_6ef

    .line 3237
    :cond_11cb
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$offset_date:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$classGuid:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$isChannel:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$loadIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v4 .. v21}, Lorg/telegram/messenger/MessagesController;->processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V

    goto/16 :goto_547
.end method

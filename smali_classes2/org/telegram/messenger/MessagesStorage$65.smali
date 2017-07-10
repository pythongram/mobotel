.class Lorg/telegram/messenger/MessagesStorage$65;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putWebPages(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$webPages:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashMap;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 4026
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$65;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$65;->val$webPages:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 4030
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4031
    .local v10, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$65;->val$webPages:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_11
    :goto_11
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 4032
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$65;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v15}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v15

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SELECT mid FROM webpage_pending WHERE id = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 4033
    .local v3, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4034
    .local v12, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_51
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v15

    if-eqz v15, :cond_69

    .line 4035
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_64

    goto :goto_51

    .line 4102
    .end local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    .end local v10    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v12    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_64
    move-exception v5

    .line 4103
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4105
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_68
    :goto_68
    return-void

    .line 4037
    .restart local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    .restart local v10    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v12    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_69
    :try_start_69
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 4039
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_11

    .line 4042
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$65;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v15}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v15

    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v18, "SELECT mid, data FROM messages WHERE mid IN (%s)"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, ","

    move-object/from16 v0, v21

    invoke-static {v0, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 4043
    :cond_a6
    :goto_a6
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v15

    if-eqz v15, :cond_e2

    .line 4044
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    .line 4045
    .local v11, "mid":I
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v4

    .line 4046
    .local v4, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v4, :cond_a6

    .line 4047
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v15, v0}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v7

    .line 4048
    .local v7, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 4049
    iget-object v15, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v15, v15, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v15, :cond_a6

    .line 4050
    iput v11, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 4051
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v17, v0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, v17

    iput-object v15, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 4052
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 4056
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v7    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v11    # "mid":I
    :cond_e2
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto/16 :goto_11

    .line 4061
    .end local v3    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    .end local v12    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_e7
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_68

    .line 4065
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$65;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v15}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 4067
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$65;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v15}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v15

    const-string v16, "UPDATE messages SET data = ? WHERE mid = ?"

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    .line 4068
    .local v13, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$65;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v15}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v15

    const-string v16, "UPDATE media_v2 SET data = ? WHERE mid = ?"

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v14

    .line 4069
    .local v14, "state2":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_115
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v2, v15, :cond_165

    .line 4070
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4071
    .restart local v7    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v7}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v15

    invoke-direct {v4, v15}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 4072
    .restart local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v7, v4}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4074
    iget v15, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v8, v15

    .line 4075
    .local v8, "messageId":J
    iget-object v15, v7, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v15, :cond_143

    .line 4076
    iget-object v15, v7, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    const/16 v15, 0x20

    shl-long v16, v16, v15

    or-long v8, v8, v16

    .line 4079
    :cond_143
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4080
    const/4 v15, 0x1

    invoke-virtual {v13, v15, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 4081
    const/4 v15, 0x2

    invoke-virtual {v13, v15, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4082
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4084
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4085
    const/4 v15, 0x1

    invoke-virtual {v14, v15, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 4086
    const/4 v15, 0x2

    invoke-virtual {v14, v15, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4087
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4089
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 4069
    add-int/lit8 v2, v2, 0x1

    goto :goto_115

    .line 4091
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v7    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v8    # "messageId":J
    :cond_165
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4092
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4094
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$65;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v15}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 4096
    new-instance v15, Lorg/telegram/messenger/MessagesStorage$65$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v10}, Lorg/telegram/messenger/MessagesStorage$65$1;-><init>(Lorg/telegram/messenger/MessagesStorage$65;Ljava/util/ArrayList;)V

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_180} :catch_64

    goto/16 :goto_68
.end method

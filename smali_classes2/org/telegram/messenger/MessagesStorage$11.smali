.class Lorg/telegram/messenger/MessagesStorage$11;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->loadUnreadMessages()V
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
    .line 878
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$11;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 42

    .prologue
    .line 882
    :try_start_0
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v36, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 884
    .local v15, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v23, "encryptedChatIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 887
    .local v6, "pushDialogs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$11;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "SELECT d.did, d.unread_count, s.flags FROM dialogs as d LEFT JOIN dialog_settings as s ON d.did = s.did WHERE d.unread_count != 0"

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v4, v5, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v18

    .line 888
    .local v18, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 889
    .local v27, "ids":Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v17

    .line 890
    .local v17, "currentTime":I
    :cond_39
    :goto_39
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 891
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v24

    .line 892
    .local v24, "flags":J
    const-wide/16 v4, 0x1

    and-long v4, v4, v24

    const-wide/16 v38, 0x0

    cmp-long v4, v4, v38

    if-eqz v4, :cond_c7

    const/16 v32, 0x1

    .line 893
    .local v32, "muted":Z
    :goto_52
    const/16 v4, 0x20

    shr-long v4, v24, v4

    long-to-int v0, v4

    move/from16 v33, v0

    .line 894
    .local v33, "mutedUntil":I
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_6c

    if-eqz v32, :cond_6c

    if-eqz v33, :cond_39

    move/from16 v0, v33

    move/from16 v1, v17

    if-ge v0, v1, :cond_39

    .line 895
    :cond_6c
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v20

    .line 896
    .local v20, "did":J
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 897
    .local v16, "count":I
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_92

    .line 899
    const-string v4, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    :cond_92
    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 902
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v28, v0

    .line 903
    .local v28, "lower_id":I
    const/16 v4, 0x20

    shr-long v4, v20, v4

    long-to-int v0, v4

    move/from16 v26, v0

    .line 904
    .local v26, "high_id":I
    if-eqz v28, :cond_e1

    .line 905
    if-gez v28, :cond_ca

    .line 906
    move/from16 v0, v28

    neg-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 907
    move/from16 v0, v28

    neg-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c0} :catch_c2

    goto/16 :goto_39

    .line 1051
    .end local v6    # "pushDialogs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v15    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "count":I
    .end local v17    # "currentTime":I
    .end local v18    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v20    # "did":J
    .end local v23    # "encryptedChatIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "flags":J
    .end local v26    # "high_id":I
    .end local v27    # "ids":Ljava/lang/StringBuilder;
    .end local v28    # "lower_id":I
    .end local v32    # "muted":Z
    .end local v33    # "mutedUntil":I
    .end local v36    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_c2
    move-exception v22

    .line 1052
    .local v22, "e":Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1054
    .end local v22    # "e":Ljava/lang/Exception;
    :goto_c6
    return-void

    .line 892
    .restart local v6    # "pushDialogs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v15    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v17    # "currentTime":I
    .restart local v18    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v23    # "encryptedChatIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "flags":J
    .restart local v27    # "ids":Ljava/lang/StringBuilder;
    .restart local v36    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_c7
    const/16 v32, 0x0

    goto :goto_52

    .line 910
    .restart local v16    # "count":I
    .restart local v20    # "did":J
    .restart local v26    # "high_id":I
    .restart local v28    # "lower_id":I
    .restart local v32    # "muted":Z
    .restart local v33    # "mutedUntil":I
    :cond_ca
    :try_start_ca
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 911
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    .line 915
    :cond_e1
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 916
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    .line 921
    .end local v16    # "count":I
    .end local v20    # "did":J
    .end local v24    # "flags":J
    .end local v26    # "high_id":I
    .end local v28    # "lower_id":I
    .end local v32    # "muted":Z
    .end local v33    # "mutedUntil":I
    :cond_f8
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 923
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v35, "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 925
    .local v34, "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .local v7, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .local v8, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v9, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .local v10, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_456

    .line 930
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$11;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "SELECT read_state, data, send_state, mid, date, uid, replydata FROM messages WHERE uid IN ("

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v37, ") AND out = 0 AND read_state IN(0,2) ORDER BY date DESC LIMIT 50"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v4, v5, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v18

    .line 931
    :cond_158
    :goto_158
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_2b0

    .line 932
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v19

    .line 933
    .local v19, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v19, :cond_158

    .line 934
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v4, v5}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v29

    .line 935
    .local v29, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 936
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessageObject;->setUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;I)V

    .line 937
    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 938
    const/4 v4, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 939
    const/4 v4, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    move-object/from16 v0, v29

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 940
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    move-object/from16 v0, v29

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    long-to-int v0, v4

    move/from16 v28, v0

    .line 943
    .restart local v28    # "lower_id":I
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-static {v0, v1, v15}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 944
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 945
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_1d3

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MessageObject;->isUnread(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-nez v4, :cond_1d3

    if-nez v28, :cond_1d9

    :cond_1d3
    move-object/from16 v0, v29

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lez v4, :cond_1de

    .line 946
    :cond_1d9
    const/4 v4, 0x0

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 948
    :cond_1de
    if-nez v28, :cond_1f4

    const/4 v4, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1f4

    .line 949
    const/4 v4, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    move-object/from16 v0, v29

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_1f4} :catch_c2

    .line 953
    :cond_1f4
    :try_start_1f4
    move-object/from16 v0, v29

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    if-eqz v4, :cond_158

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-nez v4, :cond_212

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    if-nez v4, :cond_212

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    if-eqz v4, :cond_158

    .line 957
    :cond_212
    const/4 v4, 0x6

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_248

    .line 958
    const/4 v4, 0x6

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v19

    .line 959
    if-eqz v19, :cond_248

    .line 960
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v4, v5}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 961
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 962
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_248

    .line 963
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v36

    invoke-static {v4, v0, v15}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 967
    :cond_248
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v4, :cond_158

    .line 968
    move-object/from16 v0, v29

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    int-to-long v0, v4

    move-wide/from16 v30, v0

    .line 969
    .local v30, "messageId":J
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_26a

    .line 970
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v4, v4

    const/16 v37, 0x20

    shl-long v4, v4, v37

    or-long v30, v30, v4

    .line 972
    :cond_26a
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27f

    .line 973
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    :cond_27f
    move-object/from16 v0, v29

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 976
    .local v12, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-nez v12, :cond_2a3

    .line 977
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 978
    .restart local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v29

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    :cond_2a3
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_2a8} :catch_2aa

    goto/16 :goto_158

    .line 983
    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v30    # "messageId":J
    :catch_2aa
    move-exception v22

    .line 984
    .restart local v22    # "e":Ljava/lang/Exception;
    :try_start_2ab
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_158

    .line 988
    .end local v19    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v28    # "lower_id":I
    .end local v29    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_2b0
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 990
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_362

    .line 991
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$11;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v37, "SELECT data, mid, date, uid FROM messages WHERE mid IN(%s)"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, ","

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v5, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v4, v5, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v18

    .line 992
    :cond_2f1
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_35f

    .line 993
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v19

    .line 994
    .restart local v19    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v19, :cond_2f1

    .line 995
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v4, v5}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v29

    .line 996
    .restart local v29    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 997
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 998
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 999
    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    move-object/from16 v0, v29

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 1001
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-static {v0, v1, v15}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1003
    move-object/from16 v0, v29

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 1004
    .restart local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz v12, :cond_2f1

    .line 1005
    const/4 v11, 0x0

    .local v11, "a":I
    :goto_34c
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_2f1

    .line 1006
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v29

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 1005
    add-int/lit8 v11, v11, 0x1

    goto :goto_34c

    .line 1011
    .end local v11    # "a":I
    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v19    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v29    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_35f
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1014
    :cond_362
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_379

    .line 1015
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$11;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string v5, ","

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v4, v5, v10, v0}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1018
    :cond_379
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_38e

    .line 1019
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$11;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string v5, ","

    move-object/from16 v0, v36

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1022
    :cond_38e
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_456

    .line 1023
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$11;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string v5, ","

    invoke-static {v5, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v9}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1024
    const/4 v11, 0x0

    .restart local v11    # "a":I
    :goto_3a2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_456

    .line 1025
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1026
    .local v14, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v14, :cond_452

    iget-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v4, :cond_3b8

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v4, :cond_452

    .line 1027
    :cond_3b8
    iget v4, v14, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v20, v0

    .line 1028
    .restart local v20    # "did":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$11;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "UPDATE dialogs SET unread_count = 0, unread_count_i = 0 WHERE did = "

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1029
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$11;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v37, "UPDATE messages SET read_state = 3 WHERE uid = %d AND mid > 0 AND read_state IN(0,2) AND out = 0"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    aput-object v40, v38, v39

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v5, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1030
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1031
    add-int/lit8 v11, v11, -0x1

    .line 1032
    iget v4, v14, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v4, v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    const/4 v13, 0x0

    .local v13, "b":I
    :goto_428
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_452

    .line 1034
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/telegram/tgnet/TLRPC$Message;

    .line 1035
    .restart local v29    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v29

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iget v0, v14, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v37, v0

    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v38, v0

    cmp-long v4, v4, v38

    if-nez v4, :cond_44f

    .line 1036
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1037
    add-int/lit8 v13, v13, -0x1

    .line 1033
    :cond_44f
    add-int/lit8 v13, v13, 0x1

    goto :goto_428

    .line 1024
    .end local v13    # "b":I
    .end local v20    # "did":J
    .end local v29    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_452
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3a2

    .line 1044
    .end local v11    # "a":I
    .end local v14    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_456
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1045
    new-instance v4, Lorg/telegram/messenger/MessagesStorage$11$1;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/MessagesStorage$11$1;-><init>(Lorg/telegram/messenger/MessagesStorage$11;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_463
    .catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_463} :catch_c2

    goto/16 :goto_c6
.end method

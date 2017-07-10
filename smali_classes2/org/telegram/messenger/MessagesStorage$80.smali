.class Lorg/telegram/messenger/MessagesStorage$80;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getDialogs(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$count:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;II)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 5778
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$offset:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    .prologue
    .line 5781
    new-instance v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;-><init>()V

    .line 5782
    .local v3, "dialogs":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5784
    .local v4, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    :try_start_a
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 5785
    .local v29, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5786
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5787
    .local v11, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 5788
    .local v17, "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 5789
    .local v28, "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 5790
    .local v27, "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "SELECT d.did, d.last_mid, d.unread_count, d.date, m.data, m.read_state, m.mid, m.send_state, s.flags, m.date, d.pts, d.inbox_max, d.outbox_max, m.replydata, d.pinned FROM dialogs as d LEFT JOIN messages as m ON d.last_mid = m.mid LEFT JOIN dialog_settings as s ON d.did = s.did ORDER BY d.pinned DESC, d.date DESC LIMIT %d,%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$offset:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$count:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v12

    .line 5791
    .local v12, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_60
    :goto_60
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_26c

    .line 5792
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 5793
    .local v15, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    iput-wide v6, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 5794
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 5795
    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 5796
    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 5797
    const/16 v2, 0xa

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    .line 5798
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    if-eqz v2, :cond_98

    iget-wide v6, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v6

    if-lez v2, :cond_218

    :cond_98
    const/4 v2, 0x0

    :goto_99
    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 5799
    const/16 v2, 0xb

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 5800
    const/16 v2, 0xc

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 5801
    const/16 v2, 0xe

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 5802
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-eqz v2, :cond_21b

    const/4 v2, 0x1

    :goto_b8
    iput-boolean v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 5803
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v18

    .line 5804
    .local v18, "flags":J
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v21, v0

    .line 5805
    .local v21, "low_flags":I
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 5806
    and-int/lit8 v2, v21, 0x1

    if-eqz v2, :cond_e6

    .line 5807
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const/16 v5, 0x20

    shr-long v6, v18, v5

    long-to-int v5, v6

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 5808
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    if-nez v2, :cond_e6

    .line 5809
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v5, 0x7fffffff

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 5812
    :cond_e6
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5814
    const/4 v2, 0x4

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v13

    .line 5815
    .local v13, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v13, :cond_1cc

    .line 5816
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v13, v2, v5}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v23

    .line 5817
    .local v23, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v13}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 5818
    if-eqz v23, :cond_1cc

    .line 5819
    const/4 v2, 0x5

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lorg/telegram/messenger/MessageObject;->setUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;I)V

    .line 5820
    const/4 v2, 0x6

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5821
    const/16 v2, 0x9

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    .line 5822
    .local v14, "date":I
    if-eqz v14, :cond_11e

    .line 5823
    iput v14, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 5825
    :cond_11e
    const/4 v2, 0x7

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 5826
    iget-wide v6, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-object/from16 v0, v23

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5827
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5829
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13b} :catch_1f3

    .line 5832
    :try_start_13b
    move-object/from16 v0, v23

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    if-eqz v2, :cond_1cc

    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-nez v2, :cond_159

    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    if-nez v2, :cond_159

    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    if-eqz v2, :cond_1cc

    .line 5836
    :cond_159
    const/16 v2, 0xd

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_189

    .line 5837
    const/16 v2, 0xd

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v13

    .line 5838
    if-eqz v13, :cond_189

    .line 5839
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v13, v2, v5}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 5840
    invoke-virtual {v13}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 5841
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_189

    .line 5842
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v29

    invoke-static {v2, v0, v11}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5846
    :cond_189
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v2, :cond_1cc

    .line 5847
    move-object/from16 v0, v23

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    int-to-long v0, v2

    move-wide/from16 v24, v0

    .line 5848
    .local v24, "messageId":J
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_1aa

    .line 5849
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v6, v2

    const/16 v2, 0x20

    shl-long/2addr v6, v2

    or-long v24, v24, v6

    .line 5851
    :cond_1aa
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bf

    .line 5852
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5854
    :cond_1bf
    iget-wide v6, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_1cc} :catch_21e

    .line 5863
    .end local v14    # "date":I
    .end local v23    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v24    # "messageId":J
    :cond_1cc
    :goto_1cc
    :try_start_1cc
    iget-wide v6, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v0, v6

    move/from16 v22, v0

    .line 5864
    .local v22, "lower_id":I
    iget-wide v6, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v2, 0x20

    shr-long/2addr v6, v2

    long-to-int v0, v6

    move/from16 v20, v0

    .line 5865
    .local v20, "high_id":I
    if-eqz v22, :cond_255

    .line 5866
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_223

    .line 5867
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 5868
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1f1} :catch_1f3

    goto/16 :goto_60

    .line 5923
    .end local v11    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v13    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v17    # "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "flags":J
    .end local v20    # "high_id":I
    .end local v21    # "low_flags":I
    .end local v22    # "lower_id":I
    .end local v27    # "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v28    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v29    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1f3
    move-exception v16

    .line 5924
    .local v16, "e":Ljava/lang/Exception;
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5925
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5926
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5927
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 5928
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5929
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x64

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/MessagesController;->processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZZ)V

    .line 5931
    .end local v16    # "e":Ljava/lang/Exception;
    :goto_217
    return-void

    .line 5798
    .restart local v11    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v17    # "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v28    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v29    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_218
    const/4 v2, 0x1

    goto/16 :goto_99

    .line 5802
    :cond_21b
    const/4 v2, 0x0

    goto/16 :goto_b8

    .line 5857
    .restart local v13    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v14    # "date":I
    .restart local v18    # "flags":J
    .restart local v21    # "low_flags":I
    .restart local v23    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_21e
    move-exception v16

    .line 5858
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_21f
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1cc

    .line 5871
    .end local v14    # "date":I
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v20    # "high_id":I
    .restart local v22    # "lower_id":I
    :cond_223
    if-lez v22, :cond_23c

    .line 5872
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 5873
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_60

    .line 5876
    :cond_23c
    move/from16 v0, v22

    neg-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 5877
    move/from16 v0, v22

    neg-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_60

    .line 5882
    :cond_255
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 5883
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_60

    .line 5887
    .end local v13    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v18    # "flags":J
    .end local v20    # "high_id":I
    .end local v21    # "low_flags":I
    .end local v22    # "lower_id":I
    :cond_26c
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5889
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2fa

    .line 5890
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "SELECT data, mid, date, uid FROM messages WHERE mid IN(%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, ","

    move-object/from16 v0, v28

    invoke-static {v9, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v12

    .line 5891
    :cond_29a
    :goto_29a
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_2f7

    .line 5892
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v13

    .line 5893
    .restart local v13    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v13, :cond_29a

    .line 5894
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v13, v2, v5}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v23

    .line 5895
    .restart local v23    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v13}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 5896
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5897
    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 5898
    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    move-object/from16 v0, v23

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 5900
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5902
    move-object/from16 v0, v23

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/tgnet/TLRPC$Message;

    .line 5903
    .local v26, "owner":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v26, :cond_29a

    .line 5904
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 5905
    move-object/from16 v0, v26

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-object/from16 v0, v23

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_29a

    .line 5909
    .end local v13    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v23    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v26    # "owner":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_2f7
    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 5912
    :cond_2fa
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_311

    .line 5913
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string v5, ","

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v2, v5, v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5916
    :cond_311
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_326

    .line 5917
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string v5, ","

    invoke-static {v5, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5919
    :cond_326
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33d

    .line 5920
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string v5, ","

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5922
    :cond_33d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$offset:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$count:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/MessagesController;->processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZZ)V
    :try_end_350
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_350} :catch_1f3

    goto/16 :goto_217
.end method

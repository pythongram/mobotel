.class Lorg/telegram/messenger/MessagesStorage$7;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->loadPendingTasks()V
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
    .line 700
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$7;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 37

    .prologue
    .line 704
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$7;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT id, data FROM pending_tasks WHERE 1"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v31

    .line 705
    .local v31, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_11
    :goto_11
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_1b9

    .line 706
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    .line 707
    .local v6, "taskId":J
    const/4 v2, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v32

    .line 708
    .local v32, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v32, :cond_11

    .line 709
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v35

    .line 710
    .local v35, "type":I
    packed-switch v35, :pswitch_data_1be

    .line 810
    :cond_31
    :goto_31
    invoke-virtual/range {v32 .. v32}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_11

    .line 814
    .end local v6    # "taskId":J
    .end local v31    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v32    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v35    # "type":I
    :catch_35
    move-exception v33

    .line 815
    .local v33, "e":Ljava/lang/Exception;
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 817
    .end local v33    # "e":Ljava/lang/Exception;
    :goto_39
    return-void

    .line 712
    .restart local v6    # "taskId":J
    .restart local v31    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v32    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v35    # "type":I
    :pswitch_3a
    const/4 v2, 0x0

    :try_start_3b
    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v29

    .line 713
    .local v29, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v29, :cond_31

    .line 714
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MessagesStorage$7$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v3, v0, v1, v6, v7}, Lorg/telegram/messenger/MessagesStorage$7$1;-><init>(Lorg/telegram/messenger/MessagesStorage$7;Lorg/telegram/tgnet/TLRPC$Chat;J)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_31

    .line 724
    .end local v29    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :pswitch_59
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    .line 725
    .local v4, "channelId":I
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    .line 726
    .local v5, "newDialogType":I
    sget-object v9, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$7$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage$7$2;-><init>(Lorg/telegram/messenger/MessagesStorage$7;IIJ)V

    invoke-virtual {v9, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_31

    .line 736
    .end local v4    # "channelId":I
    .end local v5    # "newDialogType":I
    :pswitch_74
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 737
    .local v10, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 738
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 739
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 740
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 741
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 742
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 743
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    .line 744
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 745
    const/4 v2, 0x5

    move/from16 v0, v35

    if-ne v0, v2, :cond_d8

    .line 746
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readBool(Z)Z

    move-result v2

    iput-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 747
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 749
    :cond_d8
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$InputPeer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v11

    .line 750
    .local v11, "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    new-instance v8, Lorg/telegram/messenger/MessagesStorage$7$3;

    move-object/from16 v9, p0

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/MessagesStorage$7$3;-><init>(Lorg/telegram/messenger/MessagesStorage$7;Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_31

    .line 759
    .end local v10    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v11    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :pswitch_f3
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v16

    .line 760
    .local v16, "random_id":J
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$InputPeer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v11

    .line 761
    .restart local v11    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$InputMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;

    .line 762
    .local v15, "game":Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v13

    move-object v14, v11

    move-wide/from16 v18, v6

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SendMessagesHelper;->sendGame(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;JJ)V

    goto/16 :goto_31

    .line 766
    .end local v11    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v15    # "game":Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;
    .end local v16    # "random_id":J
    :pswitch_124
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v20

    .line 767
    .local v20, "did":J
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readBool(Z)Z

    move-result v22

    .line 768
    .local v22, "pin":Z
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$InputPeer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v11

    .line 769
    .restart local v11    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    new-instance v18, Lorg/telegram/messenger/MessagesStorage$7$4;

    move-object/from16 v19, p0

    move-object/from16 v23, v11

    move-wide/from16 v24, v6

    invoke-direct/range {v18 .. v25}, Lorg/telegram/messenger/MessagesStorage$7$4;-><init>(Lorg/telegram/messenger/MessagesStorage$7;JZLorg/telegram/tgnet/TLRPC$InputPeer;J)V

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_31

    .line 778
    .end local v11    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v20    # "did":J
    .end local v22    # "pin":Z
    :pswitch_150
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    .line 779
    .restart local v4    # "channelId":I
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    .line 780
    .restart local v5    # "newDialogType":I
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$InputChannel;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v8

    .line 781
    .local v8, "inputChannel":Lorg/telegram/tgnet/TLRPC$InputChannel;
    sget-object v9, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$7$5;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/MessagesStorage$7$5;-><init>(Lorg/telegram/messenger/MessagesStorage$7;IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    invoke-virtual {v9, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_31

    .line 790
    .end local v4    # "channelId":I
    .end local v5    # "newDialogType":I
    .end local v8    # "inputChannel":Lorg/telegram/tgnet/TLRPC$InputChannel;
    :pswitch_17a
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    .line 791
    .restart local v4    # "channelId":I
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v30

    .line 792
    .local v30, "constructor":I
    const/4 v2, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;

    move-result-object v34

    .line 793
    .local v34, "request":Lorg/telegram/tgnet/TLObject;
    if-nez v34, :cond_19c

    .line 794
    const/4 v2, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;

    move-result-object v34

    .line 796
    :cond_19c
    if-nez v34, :cond_1a7

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$7;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    goto/16 :goto_31

    .line 799
    :cond_1a7
    move-object/from16 v28, v34

    .line 800
    .local v28, "finalRequest":Lorg/telegram/tgnet/TLObject;
    new-instance v23, Lorg/telegram/messenger/MessagesStorage$7$6;

    move-object/from16 v24, p0

    move/from16 v25, v4

    move-wide/from16 v26, v6

    invoke-direct/range {v23 .. v28}, Lorg/telegram/messenger/MessagesStorage$7$6;-><init>(Lorg/telegram/messenger/MessagesStorage$7;IJLorg/telegram/tgnet/TLObject;)V

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_31

    .line 813
    .end local v4    # "channelId":I
    .end local v6    # "taskId":J
    .end local v28    # "finalRequest":Lorg/telegram/tgnet/TLObject;
    .end local v30    # "constructor":I
    .end local v32    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v34    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v35    # "type":I
    :cond_1b9
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_1bc} :catch_35

    goto/16 :goto_39

    .line 710
    :pswitch_data_1be
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_59
        :pswitch_74
        :pswitch_f3
        :pswitch_124
        :pswitch_74
        :pswitch_150
        :pswitch_17a
    .end packed-switch
.end method

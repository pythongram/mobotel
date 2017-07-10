.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$30;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->DM_LoadMessagesByClassGuid(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

.field final synthetic val$classGuid:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 3555
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$30;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iput p2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$30;->val$classGuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 3558
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 3559
    .local v11, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    const/4 v5, 0x0

    .line 3561
    .local v5, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :try_start_6
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v16, "SELECT * FROM turbo_idm ORDER BY date ASC"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    .line 3562
    :cond_2a
    :goto_2a
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v14

    if-eqz v14, :cond_97

    .line 3563
    const/4 v14, 0x3

    invoke-virtual {v5, v14}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v6

    .line 3564
    .local v6, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v6, :cond_2a

    .line 3565
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v6, v14, v15}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v8

    .line 3566
    .local v8, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3567
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3568
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v8, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 3569
    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 3571
    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5f} :catch_60
    .catchall {:try_start_6 .. :try_end_5f} :catchall_9d

    goto :goto_2a

    .line 3574
    .end local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v8    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_60
    move-exception v7

    .line 3575
    .local v7, "e":Ljava/lang/Exception;
    :try_start_61
    const-string v14, "tmessages"

    invoke-static {v14, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_9d

    .line 3577
    if-eqz v5, :cond_6b

    .line 3578
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3582
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6b
    :goto_6b
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3583
    .local v10, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 3584
    .local v13, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3585
    .local v4, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_7b
    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_a4

    .line 3586
    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$User;

    .line 3587
    .local v12, "u":Lorg/telegram/tgnet/TLRPC$User;
    iget v14, v12, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3585
    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    .line 3577
    .end local v2    # "a":I
    .end local v4    # "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v10    # "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v12    # "u":Lorg/telegram/tgnet/TLRPC$User;
    .end local v13    # "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_97
    if-eqz v5, :cond_6b

    .line 3578
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_6b

    .line 3577
    :catchall_9d
    move-exception v14

    if-eqz v5, :cond_a3

    .line 3578
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_a3
    throw v14

    .line 3589
    .restart local v2    # "a":I
    .restart local v4    # "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .restart local v10    # "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v13    # "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_a4
    const/4 v2, 0x0

    :goto_a5
    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_c1

    .line 3590
    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3591
    .local v3, "c":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v14, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3589
    add-int/lit8 v2, v2, 0x1

    goto :goto_a5

    .line 3593
    .end local v3    # "c":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_c1
    const/4 v2, 0x0

    :goto_c2
    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_de

    .line 3594
    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3595
    .restart local v8    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v9, Lorg/telegram/messenger/MessageObject;

    const/4 v14, 0x1

    invoke-direct {v9, v8, v13, v4, v14}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 3596
    .local v9, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3593
    add-int/lit8 v2, v2, 0x1

    goto :goto_c2

    .line 3598
    .end local v8    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v9    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_de
    new-instance v14, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$30$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$30$1;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$30;Ljava/util/ArrayList;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3604
    return-void
.end method

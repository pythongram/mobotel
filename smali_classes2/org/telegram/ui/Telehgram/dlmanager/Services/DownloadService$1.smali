.class Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService$1;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;->DM_LoadMessages()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;

.field final synthetic val$objects:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;

    .prologue
    .line 133
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService$1;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService$1;->val$objects:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 136
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 137
    .local v8, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    const/4 v3, 0x0

    .line 139
    .local v3, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :try_start_6
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "SELECT * FROM turbo_idm ORDER BY date DESC"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 140
    :cond_20
    :goto_20
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    if-eqz v11, :cond_88

    .line 141
    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v4

    .line 142
    .local v4, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v4, :cond_20

    .line 143
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v6

    .line 144
    .local v6, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 145
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    iput v11, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 146
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    int-to-long v12, v11

    iput-wide v12, v6, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 147
    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    iput v11, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 149
    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_55} :catch_56
    .catchall {:try_start_6 .. :try_end_55} :catchall_8e

    goto :goto_20

    .line 152
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v6    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_56
    move-exception v5

    .line 153
    .local v5, "e":Ljava/lang/Exception;
    :try_start_57
    const-string v11, "tmessages"

    invoke-static {v11, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_8e

    .line 155
    if-eqz v3, :cond_61

    .line 156
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 160
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_61
    :goto_61
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v10, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v2, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_6c
    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_95

    .line 163
    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    .line 164
    .local v9, "u":Lorg/telegram/tgnet/TLRPC$User;
    iget v11, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 155
    .end local v0    # "a":I
    .end local v2    # "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v9    # "u":Lorg/telegram/tgnet/TLRPC$User;
    .end local v10    # "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_88
    if-eqz v3, :cond_61

    .line 156
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_61

    .line 155
    :catchall_8e
    move-exception v11

    if-eqz v3, :cond_94

    .line 156
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_94
    throw v11

    .line 166
    .restart local v0    # "a":I
    .restart local v2    # "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .restart local v10    # "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_95
    const/4 v0, 0x0

    :goto_96
    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_b2

    .line 167
    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 168
    .local v1, "c":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v11, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 170
    .end local v1    # "c":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_b2
    const/4 v0, 0x0

    :goto_b3
    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_d1

    .line 171
    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    .line 172
    .restart local v6    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x1

    invoke-direct {v7, v6, v10, v2, v11}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 173
    .local v7, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadService$1;->val$objects:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    .line 175
    .end local v6    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v7    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_d1
    return-void
.end method

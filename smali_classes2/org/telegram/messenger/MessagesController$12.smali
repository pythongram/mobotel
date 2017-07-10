.class Lorg/telegram/messenger/MessagesController$12;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic val$chat_id:I

.field final synthetic val$classGuid:I

.field final synthetic val$dialog_id:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;JII)V
    .registers 8
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 1283
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$12;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$12;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$12;->val$dialog_id:J

    iput p5, p0, Lorg/telegram/messenger/MessagesController$12;->val$chat_id:I

    iput p6, p0, Lorg/telegram/messenger/MessagesController$12;->val$classGuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 14
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1286
    if-nez p2, :cond_eb

    move-object v1, p1

    .line 1287
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    .line 1288
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->users:Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6, v10, v10}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1289
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v4, v5, v8}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 1291
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$12;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 1292
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$12;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesController$12;->val$dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1293
    .local v3, "value":Ljava/lang/Integer;
    if-nez v3, :cond_44

    .line 1294
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesController$12;->val$dialog_id:J

    invoke-virtual {v4, v8, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1297
    :cond_44
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$12;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesController$12;->val$dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_83

    .line 1299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1300
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;-><init>()V

    .line 1301
    .local v2, "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;
    iget v4, p0, Lorg/telegram/messenger/MessagesController$12;->val$chat_id:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->channel_id:I

    .line 1302
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->max_id:I

    .line 1303
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$12;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v4, v0, v9, v9, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 1307
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    .end local v2    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;
    :cond_83
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$12;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesController$12;->val$dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .line 1308
    .restart local v3    # "value":Ljava/lang/Integer;
    if-nez v3, :cond_a3

    .line 1309
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesController$12;->val$dialog_id:J

    invoke-virtual {v4, v10, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1311
    :cond_a3
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$12;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesController$12;->val$dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_outbox_max_id:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_e2

    .line 1313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1314
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;-><init>()V

    .line 1315
    .local v2, "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;
    iget v4, p0, Lorg/telegram/messenger/MessagesController$12;->val$chat_id:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;->channel_id:I

    .line 1316
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_outbox_max_id:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;->max_id:I

    .line 1317
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$12;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v4, v0, v9, v9, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 1322
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    .end local v2    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_e2
    new-instance v4, Lorg/telegram/messenger/MessagesController$12$1;

    invoke-direct {v4, p0, v1}, Lorg/telegram/messenger/MessagesController$12$1;-><init>(Lorg/telegram/messenger/MessagesController$12;Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1352
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;
    :goto_ea
    return-void

    .line 1344
    :cond_eb
    new-instance v4, Lorg/telegram/messenger/MessagesController$12$2;

    invoke-direct {v4, p0, p2}, Lorg/telegram/messenger/MessagesController$12$2;-><init>(Lorg/telegram/messenger/MessagesController$12;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_ea
.end method

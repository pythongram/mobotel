.class Lorg/telegram/messenger/MessagesController$11;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 1193
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$11;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 16
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1196
    if-eqz p1, :cond_133

    move-object v3, p1

    .line 1197
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    .line 1198
    .local v3, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_e
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_128

    .line 1200
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 1201
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    if-nez v6, :cond_24

    .line 1202
    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 1204
    :cond_24
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    if-nez v6, :cond_2a

    .line 1205
    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 1207
    :cond_2a
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_43

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_43

    .line 1208
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v6, :cond_e5

    .line 1209
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v6, v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 1217
    :cond_43
    :goto_43
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$11;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1218
    .local v5, "value":Ljava/lang/Integer;
    if-nez v5, :cond_59

    .line 1219
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1221
    :cond_59
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$11;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_92

    .line 1223
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v6, :cond_105

    .line 1224
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;-><init>()V

    .line 1225
    .local v4, "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->channel_id:I

    .line 1226
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->max_id:I

    .line 1227
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    .end local v4    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;
    :cond_92
    :goto_92
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$11;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "value":Ljava/lang/Integer;
    check-cast v5, Ljava/lang/Integer;

    .line 1237
    .restart local v5    # "value":Ljava/lang/Integer;
    if-nez v5, :cond_a8

    .line 1238
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1240
    :cond_a8
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$11;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_e1

    .line 1242
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v6, :cond_117

    .line 1243
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;-><init>()V

    .line 1244
    .local v4, "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;->channel_id:I

    .line 1245
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;->max_id:I

    .line 1246
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    .end local v4    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;
    :cond_e1
    :goto_e1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 1210
    .end local v5    # "value":Ljava/lang/Integer;
    :cond_e5
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v6, :cond_f5

    .line 1211
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v6, v6

    int-to-long v6, v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto/16 :goto_43

    .line 1212
    :cond_f5
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v6, :cond_43

    .line 1213
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v6, v6

    int-to-long v6, v6

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto/16 :goto_43

    .line 1229
    .restart local v5    # "value":Ljava/lang/Integer;
    :cond_105
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;-><init>()V

    .line 1230
    .local v4, "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1231
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->max_id:I

    .line 1232
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_92

    .line 1248
    .end local v4    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;
    :cond_117
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;-><init>()V

    .line 1249
    .local v4, "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1250
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;->max_id:I

    .line 1251
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e1

    .line 1255
    .end local v2    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v4    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;
    .end local v5    # "value":Ljava/lang/Integer;
    :cond_128
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_133

    .line 1256
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$11;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v6, v1, v12, v12, v10}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 1259
    .end local v0    # "a":I
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    .end local v3    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;
    :cond_133
    return-void
.end method

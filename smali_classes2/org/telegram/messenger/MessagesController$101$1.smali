.class Lorg/telegram/messenger/MessagesController$101$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$101;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$101;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$101;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$101;

    .prologue
    .line 6196
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$101$1;->this$1:Lorg/telegram/messenger/MessagesController$101;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$101$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 16
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 6199
    move-object v10, p1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;

    .line 6200
    .local v10, "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;
    if-eqz v10, :cond_29

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    if-eqz v0, :cond_29

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-eq v0, v2, :cond_29

    .line 6201
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$101$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_2a

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$101$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesStorage;->isMigratedChat(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6264
    :cond_29
    :goto_29
    return-void

    .line 6204
    :cond_2a
    new-instance v0, Lorg/telegram/messenger/MessagesController$101$1$1;

    invoke-direct {v0, p0, v10}, Lorg/telegram/messenger/MessagesController$101$1$1;-><init>(Lorg/telegram/messenger/MessagesController$101$1;Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6210
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 6212
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 6213
    .local v7, "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    const/4 v0, 0x1

    iput-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->media_unread:Z

    .line 6214
    const/4 v0, 0x1

    iput-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    .line 6215
    const/16 v0, 0x100

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 6216
    const/4 v0, 0x1

    iput-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->post:Z

    .line 6217
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$101$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_5d

    .line 6218
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    const/high16 v2, -0x80000000

    or-int/2addr v0, v2

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 6220
    :cond_5d
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 6221
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 6222
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 6223
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 6224
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6225
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6226
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$101$1;->this$1:Lorg/telegram/messenger/MessagesController$101;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$101;->val$chat_id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 6227
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$101$1;->this$1:Lorg/telegram/messenger/MessagesController$101;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$101;->val$chat_id:I

    neg-int v0, v0

    int-to-long v2, v0

    iput-wide v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 6228
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 6230
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6231
    .local v9, "pushMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6233
    .local v1, "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v12, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6234
    .local v12, "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_b2
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_ce

    .line 6235
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    .line 6236
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6234
    add-int/lit8 v6, v6, 0x1

    goto :goto_b2

    .line 6239
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_ce
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6240
    new-instance v8, Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x1

    invoke-direct {v8, v7, v12, v0}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 6241
    .local v8, "obj":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6243
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/MessagesController$101$1$2;

    invoke-direct {v2, p0, v9}, Lorg/telegram/messenger/MessagesController$101$1$2;-><init>(Lorg/telegram/messenger/MessagesController$101$1;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6254
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 6256
    new-instance v0, Lorg/telegram/messenger/MessagesController$101$1$3;

    invoke-direct {v0, p0, v9}, Lorg/telegram/messenger/MessagesController$101$1$3;-><init>(Lorg/telegram/messenger/MessagesController$101$1;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_29
.end method

.class Lorg/telegram/messenger/MessagesController$101;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->checkChannelInviter(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$chat_id:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 6186
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$101;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$101;->val$chat_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 6189
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$101;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, p0, Lorg/telegram/messenger/MessagesController$101;->val$chat_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 6190
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_1a

    iget v2, p0, Lorg/telegram/messenger/MessagesController$101;->val$chat_id:I

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v2, :cond_1b

    .line 6266
    :cond_1a
    :goto_1a
    return-void

    .line 6193
    :cond_1b
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;-><init>()V

    .line 6194
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;
    iget v2, p0, Lorg/telegram/messenger/MessagesController$101;->val$chat_id:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 6195
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 6196
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$101$1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/MessagesController$101$1;-><init>(Lorg/telegram/messenger/MessagesController$101;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1a
.end method

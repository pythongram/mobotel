.class Lorg/telegram/messenger/MessagesController$43$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$43;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$43;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$43;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$43;

    .prologue
    .line 2438
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$43$1;->this$1:Lorg/telegram/messenger/MessagesController$43;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$43$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$43$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 2441
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$43$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_3d

    .line 2442
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$43$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 2443
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$43$1;->this$1:Lorg/telegram/messenger/MessagesController$43;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$43;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2444
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 2445
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$43$1;->this$1:Lorg/telegram/messenger/MessagesController$43;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$43;->val$chat_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->updateChannelUsers(ILjava/util/ArrayList;)V

    .line 2446
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$43$1;->this$1:Lorg/telegram/messenger/MessagesController$43;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$43;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->access$3500(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$43$1;->this$1:Lorg/telegram/messenger/MessagesController$43;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$43;->val$chat_id:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2448
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    :cond_3d
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$43$1;->this$1:Lorg/telegram/messenger/MessagesController$43;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$43;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->access$3600(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$43$1;->this$1:Lorg/telegram/messenger/MessagesController$43;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$43;->val$chat_id:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2449
    return-void
.end method

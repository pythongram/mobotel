.class Lorg/telegram/messenger/ApplicationLoader$2$1$1;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoader$2$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ApplicationLoader$2$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ApplicationLoader$2$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$2"    # Lorg/telegram/messenger/ApplicationLoader$2$1;

    .prologue
    .line 450
    iput-object p1, p0, Lorg/telegram/messenger/ApplicationLoader$2$1$1;->this$2:Lorg/telegram/messenger/ApplicationLoader$2$1;

    iput-object p2, p0, Lorg/telegram/messenger/ApplicationLoader$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/ApplicationLoader$2$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 453
    iget-object v1, p0, Lorg/telegram/messenger/ApplicationLoader$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_31

    .line 454
    iget-object v0, p0, Lorg/telegram/messenger/ApplicationLoader$2$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 455
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 456
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 457
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 460
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_31
    return-void
.end method

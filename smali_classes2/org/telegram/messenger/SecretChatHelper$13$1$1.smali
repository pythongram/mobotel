.class Lorg/telegram/messenger/SecretChatHelper$13$1$1;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$13$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/SecretChatHelper$13$1;

.field final synthetic val$newChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$13$1;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .registers 3
    .param p1, "this$2"    # Lorg/telegram/messenger/SecretChatHelper$13$1;

    .prologue
    .line 1729
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$13$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$13$1;

    iput-object p2, p0, Lorg/telegram/messenger/SecretChatHelper$13$1$1;->val$newChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1732
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13$1$1;->val$newChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 1733
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/SecretChatHelper$13$1$1;->val$newChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1734
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$13$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$13$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$13$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$13;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$13;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13$1$1;->val$newChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 1735
    return-void
.end method

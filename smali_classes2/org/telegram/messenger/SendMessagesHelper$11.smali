.class Lorg/telegram/messenger/SendMessagesHelper$11;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->processUnsentMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper;

.field final synthetic val$chats:Ljava/util/ArrayList;

.field final synthetic val$encryptedChats:Ljava/util/ArrayList;

.field final synthetic val$messages:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/messenger/SendMessagesHelper;

    .prologue
    .line 3619
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$11;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$11;->val$users:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$11;->val$chats:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$11;->val$encryptedChats:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$11;->val$messages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 3622
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$11;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3623
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$11;->val$chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 3624
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$11;->val$encryptedChats:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->putEncryptedChats(Ljava/util/ArrayList;Z)V

    .line 3625
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1d
    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$11;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 3626
    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$11;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3627
    .local v1, "message":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 3628
    .local v2, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$11;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {v3, v2, v5}, Lorg/telegram/messenger/SendMessagesHelper;->retrySendMessage(Lorg/telegram/messenger/MessageObject;Z)Z

    .line 3625
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 3630
    .end local v1    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v2    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3c
    return-void
.end method

.class Lorg/telegram/ui/ChatActivity$5;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->onFragmentCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$chatId:I

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;ILjava/util/concurrent/Semaphore;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 659
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$5;->this$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$5;->val$chatId:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 662
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$5;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ChatActivity$5;->val$chatId:I

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getChat(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 664
    return-void
.end method

.class Lorg/telegram/messenger/MessagesController$68;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->createChat(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 4320
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$68;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$68;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$68;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 6
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 4323
    if-eqz p2, :cond_b

    .line 4324
    new-instance v1, Lorg/telegram/messenger/MessagesController$68$1;

    invoke-direct {v1, p0, p2}, Lorg/telegram/messenger/MessagesController$68$1;-><init>(Lorg/telegram/messenger/MessagesController$68;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4347
    :goto_a
    return-void

    :cond_b
    move-object v0, p1

    .line 4333
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 4334
    .local v0, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$68;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 4335
    new-instance v1, Lorg/telegram/messenger/MessagesController$68$2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/MessagesController$68$2;-><init>(Lorg/telegram/messenger/MessagesController$68;Lorg/telegram/tgnet/TLRPC$Updates;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

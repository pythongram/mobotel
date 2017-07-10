.class Lorg/telegram/ui/ChatActivity$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 415
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 418
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->readWhenResume:Z
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$000(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_61

    .line 419
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_14
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 420
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 421
    .local v9, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v1

    if-nez v1, :cond_62

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-nez v1, :cond_62

    .line 428
    .end local v9    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_34
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->readWhenResume:Z
    invoke-static {v1, v8}, Lorg/telegram/ui/ChatActivity;->access$002(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 429
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->readWithMid:I
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$200(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$1;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->readWithDate:I
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$300(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V

    .line 431
    .end local v0    # "a":I
    :cond_61
    return-void

    .line 424
    .restart local v0    # "a":I
    .restart local v9    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_62
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 425
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    .line 419
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

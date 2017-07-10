.class Lorg/telegram/ui/MediaActivity$1$4;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$1;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/MediaActivity$1;

    .prologue
    .line 498
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$1$4;->this$1:Lorg/telegram/ui/MediaActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .registers 17
    .param p1, "fragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "did"    # J
    .param p4, "param"    # Z

    .prologue
    .line 501
    long-to-int v10, p2

    .line 502
    .local v10, "lower_part":I
    if-eqz v10, :cond_bd

    .line 503
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 504
    .local v7, "args":Landroid/os/Bundle;
    const-string v1, "scrollToTopOnResume"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 505
    if-lez v10, :cond_1c

    .line 506
    const-string v1, "user_id"

    invoke-virtual {v7, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    :cond_15
    :goto_15
    invoke-static {v7, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 540
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_1b
    :goto_1b
    return-void

    .line 507
    .restart local v7    # "args":Landroid/os/Bundle;
    :cond_1c
    if-gez v10, :cond_15

    .line 508
    const-string v1, "chat_id"

    neg-int v2, v10

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_15

    .line 514
    :cond_25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v3, "fmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v6, 0x1

    .local v6, "a":I
    :goto_2b
    if-ltz v6, :cond_7b

    .line 516
    new-instance v9, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$4;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 517
    .local v9, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 518
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 519
    .local v8, "id":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_47

    .line 520
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$1$4;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 523
    .end local v8    # "id":Ljava/lang/Integer;
    :cond_6b
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$4;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 515
    add-int/lit8 v6, v6, -0x1

    goto :goto_2b

    .line 525
    .end local v9    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7b
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$4;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I
    invoke-static {v1, v2}, Lorg/telegram/ui/MediaActivity;->access$702(Lorg/telegram/ui/MediaActivity;I)I

    .line 526
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$4;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 528
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 530
    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 531
    .local v0, "chatActivity":Lorg/telegram/ui/ChatActivity;
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$4;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/MediaActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 532
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 534
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 535
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$4;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/MediaActivity;->removeSelfFromStack()V

    goto/16 :goto_1b

    .line 538
    .end local v0    # "chatActivity":Lorg/telegram/ui/ChatActivity;
    .end local v3    # "fmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v6    # "a":I
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_bd
    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto/16 :goto_1b
.end method

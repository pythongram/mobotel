.class Lorg/telegram/ui/ChatActivity$10;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
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
    .line 1437
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .registers 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1441
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setVisibility(I)V

    .line 1442
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1443
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1444
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1446
    :cond_27
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1447
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1457
    :cond_38
    :goto_38
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1458
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    const v1, 0x7fffffff

    # setter for: Lorg/telegram/ui/ChatActivity;->highlightMessageId:I
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$4502(Lorg/telegram/ui/ChatActivity;I)I

    .line 1459
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)V

    .line 1460
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->scrollToLastMessage(Z)V
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;Z)V

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateBottomOverlay()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2400(Lorg/telegram/ui/ChatActivity;)V

    .line 1462
    return-void

    .line 1450
    :cond_59
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1453
    :cond_6a
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1454
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto :goto_38
.end method

.method public onSearchExpand()V
    .registers 5

    .prologue
    .line 1466
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->openSearchKeyboard:Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1476
    :goto_8
    return-void

    .line 1469
    :cond_9
    new-instance v0, Lorg/telegram/ui/ChatActivity$10$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$10$1;-><init>(Lorg/telegram/ui/ChatActivity$10;)V

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_8
.end method

.method public onSearchPressed(Landroid/widget/EditText;)V
    .registers 10
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v7, 0x0

    .line 1480
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateSearchButtons(III)V
    invoke-static {v0, v7, v7, v7}, Lorg/telegram/ui/ChatActivity;->access$4800(Lorg/telegram/ui/ChatActivity;III)V

    .line 1481
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mergeDialogId:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4900(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->classGuid:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchMessagesInChat(Ljava/lang/String;JJII)V

    .line 1482
    return-void
.end method

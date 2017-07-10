.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 10495
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didClickedImage(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .registers 10
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatActionCell;

    .prologue
    const-wide/16 v2, 0x0

    .line 10498
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 10499
    .local v1, "message":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 10500
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v4, 0x280

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    .line 10501
    .local v7, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v7, :cond_2d

    .line 10502
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    .line 10506
    :goto_2c
    return-void

    .line 10504
    :cond_2d
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v6, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;JJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto :goto_2c
.end method

.method public didLongPressed(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .registers 4
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatActionCell;

    .prologue
    .line 10510
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/ChatActivity;->createMenu(Landroid/view/View;Z)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->access$800(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Z)V

    .line 10511
    return-void
.end method

.method public didPressedBotButton(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .registers 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 10541
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2d

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    if-nez v0, :cond_2d

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-nez v0, :cond_2d

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-nez v0, :cond_2d

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-nez v0, :cond_2d

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-nez v0, :cond_2d

    .line 10548
    :cond_2c
    :goto_2c
    return-void

    .line 10547
    :cond_2d
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p2, p1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->didPressedBotButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_2c
.end method

.method public didPressedReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V
    .registers 13
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatActionCell;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 10535
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 10536
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mergeDialogId:J
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4900(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_22

    move v1, v2

    :goto_1e
    # invokes: Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZI)V
    invoke-static {v3, p2, v4, v2, v1}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;IIZI)V

    .line 10537
    return-void

    .line 10536
    :cond_22
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public needOpenUserProfile(I)V
    .registers 8
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x1

    .line 10515
    if-gez p1, :cond_25

    .line 10516
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10517
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "chat_id"

    neg-int v4, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10518
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 10519
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v4, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 10531
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_24
    :goto_24
    return-void

    .line 10521
    :cond_25
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-eq p1, v3, :cond_24

    .line 10522
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10523
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v3, "user_id"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10524
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v3, :cond_54

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne p1, v3, :cond_54

    .line 10525
    const-string v3, "dialog_id"

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 10527
    :cond_54
    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 10528
    .local v1, "fragment":Lorg/telegram/ui/ProfileActivity;
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_76

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne v3, p1, :cond_76

    :goto_6b
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(Z)V

    .line 10529
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_24

    .line 10528
    :cond_76
    const/4 v2, 0x0

    goto :goto_6b
.end method

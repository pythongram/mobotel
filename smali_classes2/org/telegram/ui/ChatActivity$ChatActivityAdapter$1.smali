.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;


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
    .line 10159
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPerformActions()Z
    .registers 2

    .prologue
    .line 10265
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public didLongPressed(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .registers 4
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 10260
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/ChatActivity;->createMenu(Landroid/view/View;Z)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->access$800(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Z)V

    .line 10261
    return-void
.end method

.method public didPressedBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .registers 6
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 10241
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

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

    .line 10248
    :cond_2c
    :goto_2c
    return-void

    .line 10247
    :cond_2d
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->didPressedBotButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_2c
.end method

.method public didPressedCancelSendButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .registers 4
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 10252
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 10253
    .local v0, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v1, :cond_11

    .line 10254
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/SendMessagesHelper;->cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V

    .line 10256
    :cond_11
    return-void
.end method

.method public didPressedChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;I)V
    .registers 8
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p3, "postId"    # I

    .prologue
    .line 10193
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$18200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 10194
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->processRowSelect(Landroid/view/View;)V
    invoke-static {v1, p1}, Lorg/telegram/ui/ChatActivity;->access$1000(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V

    .line 10207
    :cond_15
    :goto_15
    return-void

    .line 10197
    :cond_16
    if-eqz p2, :cond_15

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eq p2, v1, :cond_15

    .line 10198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10199
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "chat_id"

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10200
    if-eqz p3, :cond_33

    .line 10201
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10203
    :cond_33
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 10204
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_15
.end method

.method public didPressedImage(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .registers 21
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 10366
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v17

    .line 10367
    .local v17, "message":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 10368
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    # invokes: Lorg/telegram/ui/ChatActivity;->createMenu(Landroid/view/View;Z)V
    invoke-static {v2, v0, v3}, Lorg/telegram/ui/ChatActivity;->access$800(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Z)V

    .line 10454
    :cond_16
    :goto_16
    return-void

    .line 10370
    :cond_17
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v2

    if-nez v2, :cond_16

    .line 10373
    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_63

    .line 10374
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v8, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;
    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$14300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_61

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    :goto_5a
    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_16

    :cond_61
    const/4 v7, 0x0

    goto :goto_5a

    .line 10375
    :cond_63
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_6f

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-nez v2, :cond_88

    :cond_6f
    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_88

    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v2, :cond_82

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isWebpageDocument()Z

    move-result v2

    if-eqz v2, :cond_88

    :cond_82
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 10376
    :cond_88
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 10377
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v17

    # invokes: Lorg/telegram/ui/ChatActivity;->sendSecretMessageRead(Lorg/telegram/messenger/MessageObject;)Z
    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Z

    .line 10379
    :cond_99
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 10380
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    move-object/from16 v0, v17

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v3, :cond_eb

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    :goto_be
    move-object/from16 v0, v17

    iget v3, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v3, :cond_ee

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mergeDialogId:J
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4900(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    :goto_ce
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v8, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v3, v17

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;JJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 10381
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentChatActivity(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_16

    .line 10380
    :cond_eb
    const-wide/16 v4, 0x0

    goto :goto_be

    :cond_ee
    const-wide/16 v6, 0x0

    goto :goto_ce

    .line 10383
    :cond_f1
    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_183

    .line 10384
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v17

    # invokes: Lorg/telegram/ui/ChatActivity;->sendSecretMessageRead(Lorg/telegram/messenger/MessageObject;)Z
    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Z

    .line 10386
    const/4 v10, 0x0

    .line 10387
    .local v10, "f":Ljava/io/File;
    :try_start_104
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_124

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_124

    .line 10388
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v10    # "f":Ljava/io/File;
    .local v11, "f":Ljava/io/File;
    move-object v10, v11

    .line 10390
    .end local v11    # "f":Ljava/io/File;
    .restart local v10    # "f":Ljava/io/File;
    :cond_124
    if-eqz v10, :cond_12c

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_134

    .line 10391
    :cond_12c
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v10

    .line 10393
    :cond_134
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10394
    .local v14, "intent":Landroid/content/Intent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_179

    .line 10395
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.mobotel.provider"

    invoke-static {v2, v3, v10}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 10400
    :goto_15a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-virtual {v2, v14, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_169} :catch_16b

    goto/16 :goto_16

    .line 10401
    .end local v14    # "intent":Landroid/content/Intent;
    :catch_16b
    move-exception v9

    .line 10402
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v17

    # invokes: Lorg/telegram/ui/ChatActivity;->alertUserOpenError(Lorg/telegram/messenger/MessageObject;)V
    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$18800(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_16

    .line 10398
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v14    # "intent":Landroid/content/Intent;
    :cond_179
    :try_start_179
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_182} :catch_16b

    goto :goto_15a

    .line 10404
    .end local v10    # "f":Ljava/io/File;
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_183
    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1ab

    .line 10405
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isGoogleMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 10408
    new-instance v12, Lorg/telegram/ui/LocationActivity;

    invoke-direct {v12}, Lorg/telegram/ui/LocationActivity;-><init>()V

    .line 10409
    .local v12, "fragment":Lorg/telegram/ui/LocationActivity;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 10410
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_16

    .line 10411
    .end local v12    # "fragment":Lorg/telegram/ui/LocationActivity;
    :cond_1ab
    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1b9

    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v2, :cond_16

    .line 10412
    :cond_1b9
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "attheme"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2af

    .line 10413
    const/16 v16, 0x0

    .line 10414
    .local v16, "locFile":Ljava/io/File;
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_1ee

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1ee

    .line 10415
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10416
    .restart local v10    # "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1ee

    .line 10417
    move-object/from16 v16, v10

    .line 10420
    .end local v10    # "f":Ljava/io/File;
    :cond_1ee
    if-nez v16, :cond_200

    .line 10421
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v10

    .line 10422
    .restart local v10    # "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_200

    .line 10423
    move-object/from16 v16, v10

    .line 10426
    .end local v10    # "f":Ljava/io/File;
    :cond_200
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    if-eqz v2, :cond_26e

    .line 10427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v15

    .line 10428
    .local v15, "lastPosition":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_29a

    .line 10429
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    # setter for: Lorg/telegram/ui/ChatActivity;->scrollToPositionOnRecreate:I
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$18902(Lorg/telegram/ui/ChatActivity;I)I

    .line 10430
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->scrollToPositionOnRecreate:I
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18900(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 10431
    .local v13, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-eqz v13, :cond_28f

    .line 10432
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v13, Lorg/telegram/ui/Components/RecyclerListView$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    # setter for: Lorg/telegram/ui/ChatActivity;->scrollToOffsetOnRecreate:I
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$19002(Lorg/telegram/ui/ChatActivity;I)I

    .line 10440
    .end local v13    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .end local v15    # "lastPosition":I
    :cond_26e
    :goto_26e
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v18

    .line 10441
    .local v18, "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    if-eqz v18, :cond_2a5

    .line 10442
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_16

    .line 10434
    .end local v18    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .restart local v13    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .restart local v15    # "lastPosition":I
    :cond_28f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, -0x1

    # setter for: Lorg/telegram/ui/ChatActivity;->scrollToPositionOnRecreate:I
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$18902(Lorg/telegram/ui/ChatActivity;I)I

    goto :goto_26e

    .line 10437
    .end local v13    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_29a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, -0x1

    # setter for: Lorg/telegram/ui/ChatActivity;->scrollToPositionOnRecreate:I
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$18902(Lorg/telegram/ui/ChatActivity;I)I

    goto :goto_26e

    .line 10445
    .end local v15    # "lastPosition":I
    .restart local v18    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :cond_2a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, -0x1

    # setter for: Lorg/telegram/ui/ChatActivity;->scrollToPositionOnRecreate:I
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$18902(Lorg/telegram/ui/ChatActivity;I)I

    .line 10449
    .end local v16    # "locFile":Ljava/io/File;
    .end local v18    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :cond_2af
    :try_start_2af
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;)V
    :try_end_2be
    .catch Ljava/lang/Exception; {:try_start_2af .. :try_end_2be} :catch_2c0

    goto/16 :goto_16

    .line 10450
    :catch_2c0
    move-exception v9

    .line 10451
    .restart local v9    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v17

    # invokes: Lorg/telegram/ui/ChatActivity;->alertUserOpenError(Lorg/telegram/messenger/MessageObject;)V
    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$18800(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_16
.end method

.method public didPressedInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .registers 5
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 10458
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 10459
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_32

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v1, :cond_32

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v1, :cond_32

    .line 10460
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 10461
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    .line 10463
    :cond_32
    return-void
.end method

.method public didPressedOther(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .registers 6
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 10211
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_34

    .line 10212
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_33

    .line 10213
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_userFull;)V

    .line 10217
    :cond_33
    :goto_33
    return-void

    .line 10215
    :cond_34
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/ChatActivity;->createMenu(Landroid/view/View;Z)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->access$800(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Z)V

    goto :goto_33
.end method

.method public didPressedReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .registers 13
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 10349
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 10350
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

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

    .line 10351
    return-void

    .line 10350
    :cond_22
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public didPressedShare(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .registers 13
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 10162
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_e

    .line 10177
    :goto_d
    return-void

    .line 10165
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_1f

    .line 10166
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 10169
    :cond_1f
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 10170
    .local v9, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 10171
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "forward_type"

    invoke-interface {v8, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10172
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 10173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10174
    .local v2, "msgObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10175
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v0, Lorg/telegram/ui/Telehgram/ShareAlert2;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    # getter for: Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$18000(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_82

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v5, :cond_82

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v5, :cond_82

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_82

    :goto_79
    move-object v5, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Telehgram/ShareAlert2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_d

    :cond_82
    move v4, v6

    goto :goto_79
.end method

.method public didPressedUrl(Lorg/telegram/messenger/MessageObject;Landroid/text/style/CharacterStyle;Z)V
    .registers 20
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "url"    # Landroid/text/style/CharacterStyle;
    .param p3, "longPress"    # Z

    .prologue
    .line 10271
    if-nez p2, :cond_3

    .line 10340
    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_2
    :goto_2
    return-void

    .line 10274
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_3
    move-object/from16 v0, p2

    instance-of v9, v0, Lorg/telegram/ui/Components/URLSpanMono;

    if-eqz v9, :cond_2a

    .line 10275
    check-cast p2, Lorg/telegram/ui/Components/URLSpanMono;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/URLSpanMono;->copyToClipboard()V

    .line 10276
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "TextCopied"

    const v11, 0x7f070537

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 10277
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_2a
    move-object/from16 v0, p2

    instance-of v9, v0, Lorg/telegram/ui/Components/URLSpanUserMention;

    if-eqz v9, :cond_51

    .line 10278
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    check-cast p2, Lorg/telegram/ui/Components/URLSpanUserMention;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/URLSpanUserMention;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 10279
    .local v8, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v8, :cond_2

    .line 10280
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    goto :goto_2

    .line 10282
    .end local v8    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_51
    move-object/from16 v0, p2

    instance-of v9, v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-eqz v9, :cond_e0

    .line 10283
    check-cast p2, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->getURL()Ljava/lang/String;

    move-result-object v6

    .line 10284
    .local v6, "str":Ljava/lang/String;
    const-string v9, "@"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_75

    .line 10285
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    goto :goto_2

    .line 10286
    :cond_75
    const-string v9, "#"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_aa

    .line 10287
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_96

    .line 10288
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->openSearchWithText(Ljava/lang/String;)V
    invoke-static {v9, v6}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 10290
    :cond_96
    new-instance v3, Lorg/telegram/ui/DialogsActivity;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 10291
    .local v3, "fragment":Lorg/telegram/ui/DialogsActivity;
    invoke-virtual {v3, v6}, Lorg/telegram/ui/DialogsActivity;->setSearchString(Ljava/lang/String;)V

    .line 10292
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9, v3}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2

    .line 10294
    .end local v3    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_aa
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 10295
    sget-boolean v9, Lorg/telegram/ui/Components/URLSpanBotCommand;->enabled:Z

    if-eqz v9, :cond_2

    .line 10296
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v9, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v9, :cond_de

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v9, :cond_de

    const/4 v9, 0x1

    :goto_d5
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v10, v0, v6, v1, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setCommand(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    :cond_de
    const/4 v9, 0x0

    goto :goto_d5

    .end local v6    # "str":Ljava/lang/String;
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_e0
    move-object/from16 v9, p2

    .line 10300
    check-cast v9, Landroid/text/style/URLSpan;

    invoke-virtual {v9}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    .line 10301
    .local v7, "urlFinal":Ljava/lang/String;
    if-eqz p3, :cond_130

    .line 10302
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 10303
    .local v2, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 10304
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string v11, "Open"

    const v12, 0x7f0703e0

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "Copy"

    const v12, 0x7f07019a

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v7}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;Ljava/lang/String;)V

    invoke-virtual {v2, v9, v10}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 10320
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 10322
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    :cond_130
    move-object/from16 v0, p2

    instance-of v9, v0, Lorg/telegram/ui/Components/URLSpanReplacement;

    if-eqz v9, :cond_148

    .line 10323
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    check-cast p2, Lorg/telegram/ui/Components/URLSpanReplacement;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/URLSpanReplacement;->getURL()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lorg/telegram/ui/ChatActivity;->showOpenUrlAlert(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 10324
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_148
    move-object/from16 v0, p2

    instance-of v9, v0, Landroid/text/style/URLSpan;

    if-eqz v9, :cond_1d2

    .line 10325
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v9, :cond_1b0

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v9, :cond_1b0

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v9, :cond_1b0

    .line 10326
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 10327
    .local v4, "lowerUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 10328
    .local v5, "lowerUrl2":Ljava/lang/String;
    const-string v9, "telegra.ph"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1b0

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_194

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1b0

    .line 10329
    :cond_194
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 10330
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    goto/16 :goto_2

    .line 10334
    .end local v4    # "lowerUrl":Ljava/lang/String;
    .end local v5    # "lowerUrl2":Ljava/lang/String;
    :cond_1b0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->inlineReturn:J
    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$17700(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_1d0

    const/4 v9, 0x1

    :goto_1cb
    invoke-static {v10, v7, v9}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_1d0
    const/4 v9, 0x0

    goto :goto_1cb

    .line 10335
    :cond_1d2
    move-object/from16 v0, p2

    instance-of v9, v0, Landroid/text/style/ClickableSpan;

    if-eqz v9, :cond_2

    .line 10336
    check-cast p2, Landroid/text/style/ClickableSpan;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->fragmentView:Landroid/view/View;
    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$18600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method public didPressedUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 10
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const/4 v4, 0x0

    .line 10221
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 10222
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->processRowSelect(Landroid/view/View;)V
    invoke-static {v4, p1}, Lorg/telegram/ui/ChatActivity;->access$1000(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V

    .line 10237
    :cond_16
    :goto_16
    return-void

    .line 10225
    :cond_17
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 10226
    .local v3, "preferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hide_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    .line 10227
    .local v2, "isHide":Z
    if-nez v2, :cond_16

    .line 10230
    if-eqz p2, :cond_16

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-eq v5, v6, :cond_16

    .line 10231
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10232
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "user_id"

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10233
    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 10234
    .local v1, "fragment":Lorg/telegram/ui/ProfileActivity;
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_6e

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne v5, v6, :cond_6e

    const/4 v4, 0x1

    :cond_6e
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(Z)V

    .line 10235
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_16
.end method

.method public didPressedViaBot(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)V
    .registers 6
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 10355
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_30

    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->bottomOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->bottomOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_31

    .line 10362
    :cond_30
    :goto_30
    return-void

    .line 10358
    :cond_31
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_30

    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_30

    .line 10359
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 10360
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    goto :goto_30
.end method

.method public needOpenWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "originalUrl"    # Ljava/lang/String;
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 10344
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    # getter for: Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$18000(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Landroid/content/Context;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 10345
    return-void
.end method

.method public needPlayAudio(Lorg/telegram/messenger/MessageObject;)Z
    .registers 6
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x0

    .line 10181
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 10182
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    .line 10183
    .local v0, "result":Z
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    if-eqz v0, :cond_21

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->createVoiceMessagesPlaylist(Lorg/telegram/messenger/MessageObject;Z)Ljava/util/ArrayList;
    invoke-static {v1, p1, v2}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)Ljava/util/ArrayList;

    move-result-object v1

    :goto_1d
    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MediaController;->setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V

    .line 10188
    .end local v0    # "result":Z
    :goto_20
    return v0

    .line 10183
    .restart local v0    # "result":Z
    :cond_21
    const/4 v1, 0x0

    goto :goto_1d

    .line 10185
    .end local v0    # "result":Z
    :cond_23
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 10186
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    goto :goto_20

    :cond_38
    move v0, v2

    .line 10188
    goto :goto_20
.end method

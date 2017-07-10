.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    .prologue
    .line 2841
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPerformActions()Z
    .registers 2

    .prologue
    .line 2929
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

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
    .line 2924
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createMenu(Landroid/view/View;Z)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/view/View;Z)V

    .line 2925
    return-void
.end method

.method public didPressedBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .registers 4
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 2898
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_28

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    if-nez v0, :cond_28

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-nez v0, :cond_28

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-nez v0, :cond_28

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-nez v0, :cond_28

    .line 2903
    :cond_28
    return-void
.end method

.method public didPressedCancelSendButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .registers 4
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 2916
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 2917
    .local v0, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v1, :cond_11

    .line 2918
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/SendMessagesHelper;->cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V

    .line 2920
    :cond_11
    return-void
.end method

.method public didPressedChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;I)V
    .registers 4
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p3, "postId"    # I

    .prologue
    .line 2884
    return-void
.end method

.method public didPressedImage(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .registers 15
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 3025
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    .line 3026
    .local v12, "message":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3027
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createMenu(Landroid/view/View;Z)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/view/View;Z)V

    .line 3073
    :cond_12
    :goto_12
    return-void

    .line 3029
    :cond_13
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3032
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3e

    .line 3033
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v6, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    new-instance v0, Lorg/telegram/ui/Components/StickersAlert;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_12

    .line 3034
    :cond_3e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4a

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-nez v0, :cond_5f

    :cond_4a
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5f

    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v0, :cond_59

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isWebpageDocument()Z

    move-result v0

    if-eqz v0, :cond_5f

    :cond_59
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 3035
    :cond_5f
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 3036
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget v1, v12, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v1, :cond_97

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->dialog_id:J
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$7100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)J

    move-result-wide v2

    :goto_7e
    iget v1, v12, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->mergeDialogId:J
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)J

    move-result-wide v4

    :goto_8a
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v6, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    move-object v1, v12

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;JJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_12

    :cond_97
    const-wide/16 v2, 0x0

    goto :goto_7e

    :cond_9a
    const-wide/16 v4, 0x0

    goto :goto_8a

    .line 3039
    :cond_9d
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_112

    .line 3041
    const/4 v8, 0x0

    .line 3042
    .local v8, "f":Ljava/io/File;
    :try_start_a3
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_bd

    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_bd

    .line 3043
    new-instance v9, Ljava/io/File;

    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v8    # "f":Ljava/io/File;
    .local v9, "f":Ljava/io/File;
    move-object v8, v9

    .line 3045
    .end local v9    # "f":Ljava/io/File;
    .restart local v8    # "f":Ljava/io/File;
    :cond_bd
    if-eqz v8, :cond_c5

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_cb

    .line 3046
    :cond_c5
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v8

    .line 3048
    :cond_cb
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3049
    .local v11, "intent":Landroid/content/Intent;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_108

    .line 3050
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3051
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.mobotel.provider"

    invoke-static {v0, v1, v8}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "video/mp4"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3055
    :goto_ef
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v11, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_fc} :catch_fe

    goto/16 :goto_12

    .line 3056
    .end local v11    # "intent":Landroid/content/Intent;
    :catch_fe
    move-exception v7

    .line 3057
    .local v7, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertUserOpenError(Lorg/telegram/messenger/MessageObject;)V
    invoke-static {v0, v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$7200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_12

    .line 3053
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "intent":Landroid/content/Intent;
    :cond_108
    :try_start_108
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "video/mp4"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_111} :catch_fe

    goto :goto_ef

    .line 3059
    .end local v8    # "f":Ljava/io/File;
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_112
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_132

    .line 3060
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isGoogleMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3063
    new-instance v10, Lorg/telegram/ui/LocationActivity;

    invoke-direct {v10}, Lorg/telegram/ui/LocationActivity;-><init>()V

    .line 3064
    .local v10, "fragment":Lorg/telegram/ui/LocationActivity;
    invoke-virtual {v10, v12}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 3065
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_12

    .line 3066
    .end local v10    # "fragment":Lorg/telegram/ui/LocationActivity;
    :cond_132
    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13c

    iget v0, v12, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v0, :cond_12

    .line 3068
    :cond_13c
    :try_start_13c
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;)V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_147} :catch_149

    goto/16 :goto_12

    .line 3069
    :catch_149
    move-exception v7

    .line 3070
    .restart local v7    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->alertUserOpenError(Lorg/telegram/messenger/MessageObject;)V
    invoke-static {v0, v12}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$7200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_12
.end method

.method public didPressedInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .registers 5
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 2907
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 2908
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

    .line 2909
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 2910
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    .line 2912
    :cond_32
    return-void
.end method

.method public didPressedOther(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .registers 4
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    .line 2888
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createMenu(Landroid/view/View;Z)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/view/View;Z)V

    .line 2889
    return-void
.end method

.method public didPressedReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .registers 13
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 3012
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 3013
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v3, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->mergeDialogId:J
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_22

    move v1, v2

    :goto_1e
    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->scrollToMessageId(IIZI)V
    invoke-static {v3, p2, v4, v2, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;IIZI)V

    .line 3014
    return-void

    .line 3013
    :cond_22
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public didPressedShare(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .registers 13
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2844
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2854
    :goto_c
    return-void

    .line 2847
    :cond_d
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 2848
    .local v9, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 2849
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "forward_type"

    const/4 v1, 0x1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2850
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2851
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2852
    .local v2, "msgObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2853
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v10, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    new-instance v0, Lorg/telegram/ui/Telehgram/ShareAlert2;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->access$6200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)Landroid/content/Context;

    move-result-object v1

    move-object v5, v3

    move v6, v4

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Telehgram/ShareAlert2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_c
.end method

.method public didPressedUrl(Lorg/telegram/messenger/MessageObject;Landroid/text/style/CharacterStyle;Z)V
    .registers 16
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "url"    # Landroid/text/style/CharacterStyle;
    .param p3, "longPress"    # Z

    .prologue
    .line 2940
    if-nez p2, :cond_3

    .line 3003
    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_2
    :goto_2
    return-void

    .line 2943
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_3
    instance-of v6, p2, Lorg/telegram/ui/Components/URLSpanMono;

    if-eqz v6, :cond_26

    .line 2944
    check-cast p2, Lorg/telegram/ui/Components/URLSpanMono;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    invoke-virtual {p2}, Lorg/telegram/ui/Components/URLSpanMono;->copyToClipboard()V

    .line 2945
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "TextCopied"

    const v8, 0x7f070537

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 2946
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_26
    instance-of v6, p2, Lorg/telegram/ui/Components/URLSpanUserMention;

    if-eqz v6, :cond_49

    .line 2947
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    check-cast p2, Lorg/telegram/ui/Components/URLSpanUserMention;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    invoke-virtual {p2}, Lorg/telegram/ui/Components/URLSpanUserMention;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 2948
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v5, :cond_2

    .line 2949
    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v7, v7, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    goto :goto_2

    .line 2951
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_49
    instance-of v6, p2, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-eqz v6, :cond_7e

    .line 2952
    check-cast p2, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    invoke-virtual {p2}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->getURL()Ljava/lang/String;

    move-result-object v3

    .line 2953
    .local v3, "str":Ljava/lang/String;
    const-string v6, "@"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 2954
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v7, v7, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    goto :goto_2

    .line 2955
    :cond_69
    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2957
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2958
    sget-boolean v6, Lorg/telegram/ui/Components/URLSpanBotCommand;->enabled:Z

    if-eqz v6, :cond_2

    goto :goto_2

    .end local v3    # "str":Ljava/lang/String;
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_7e
    move-object v6, p2

    .line 2963
    check-cast v6, Landroid/text/style/URLSpan;

    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 2964
    .local v4, "urlFinal":Ljava/lang/String;
    if-eqz p3, :cond_c7

    .line 2965
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 2966
    .local v0, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2967
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const-string v8, "Open"

    const v9, 0x7f0703e0

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "Copy"

    const v9, 0x7f07019a

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1$1;

    invoke-direct {v7, p0, v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1$1;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2983
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 2985
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    :cond_c7
    instance-of v6, p2, Lorg/telegram/ui/Components/URLSpanReplacement;

    if-eqz v6, :cond_db

    .line 2986
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    check-cast p2, Lorg/telegram/ui/Components/URLSpanReplacement;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    invoke-virtual {p2}, Lorg/telegram/ui/Components/URLSpanReplacement;->getURL()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->showOpenUrlAlert(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 2987
    .restart local p2    # "url":Landroid/text/style/CharacterStyle;
    :cond_db
    instance-of v6, p2, Landroid/text/style/URLSpan;

    if-eqz v6, :cond_153

    .line 2988
    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v6, :cond_135

    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v6, :cond_135

    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v6, :cond_135

    .line 2989
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2990
    .local v1, "lowerUrl":Ljava/lang/String;
    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2991
    .local v2, "lowerUrl2":Ljava/lang/String;
    const-string v6, "telegra.ph"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_135

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11d

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_135

    .line 2992
    :cond_11d
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v7, v7, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 2993
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    goto/16 :goto_2

    .line 2997
    .end local v1    # "lowerUrl":Ljava/lang/String;
    .end local v2    # "lowerUrl2":Ljava/lang/String;
    :cond_135
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->inlineReturn:J
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_151

    const/4 v6, 0x1

    :goto_14c
    invoke-static {v7, v4, v6}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_151
    const/4 v6, 0x0

    goto :goto_14c

    .line 2998
    :cond_153
    instance-of v6, p2, Landroid/text/style/ClickableSpan;

    if-eqz v6, :cond_2

    .line 2999
    check-cast p2, Landroid/text/style/ClickableSpan;

    .end local p2    # "url":Landroid/text/style/CharacterStyle;
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->fragmentView:Landroid/view/View;
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method public didPressedUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 3
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 2894
    return-void
.end method

.method public didPressedViaBot(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)V
    .registers 4
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatMessageCell;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 3018
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_30

    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$7000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->bottomOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$7000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_30

    .line 3021
    :cond_30
    return-void
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
    .line 3007
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->access$6200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;)Landroid/content/Context;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 3008
    return-void
.end method

.method public needPlayAudio(Lorg/telegram/messenger/MessageObject;)Z
    .registers 6
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x0

    .line 2858
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2859
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    .line 2860
    .local v0, "result":Z
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    if-eqz v0, :cond_21

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createVoiceMessagesPlaylist(Lorg/telegram/messenger/MessageObject;Z)Ljava/util/ArrayList;
    invoke-static {v1, p1, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$6300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Lorg/telegram/messenger/MessageObject;Z)Ljava/util/ArrayList;

    move-result-object v1

    :goto_1d
    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MediaController;->setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V

    .line 2865
    .end local v0    # "result":Z
    :goto_20
    return v0

    .line 2860
    .restart local v0    # "result":Z
    :cond_21
    const/4 v1, 0x0

    goto :goto_1d

    .line 2862
    .end local v0    # "result":Z
    :cond_23
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2863
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    goto :goto_20

    :cond_38
    move v0, v2

    .line 2865
    goto :goto_20
.end method

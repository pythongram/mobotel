.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;


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
    .line 3144
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didClickedImage(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .registers 10
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatActionCell;

    .prologue
    const-wide/16 v2, 0x0

    .line 3147
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 3148
    .local v1, "message":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 3149
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v4, 0x280

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    .line 3150
    .local v7, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v7, :cond_2d

    .line 3151
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    .line 3155
    :goto_2c
    return-void

    .line 3153
    :cond_2d
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v6, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;JJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto :goto_2c
.end method

.method public didLongPressed(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .registers 4
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatActionCell;

    .prologue
    .line 3159
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createMenu(Landroid/view/View;Z)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;Landroid/view/View;Z)V

    .line 3160
    return-void
.end method

.method public didPressedBotButton(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .registers 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 3187
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

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

    .line 3192
    :cond_28
    return-void
.end method

.method public didPressedReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V
    .registers 13
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatActionCell;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 3181
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 3182
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v3, v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

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

    .line 3183
    return-void

    .line 3182
    :cond_22
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public needOpenUserProfile(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 3164
    if-gez p1, :cond_25

    .line 3165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3166
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "chat_id"

    neg-int v3, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3167
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-static {v0, v2}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3168
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 3177
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_24
    :goto_24
    return-void

    .line 3170
    :cond_25
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-eq p1, v2, :cond_24

    .line 3171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3172
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3173
    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 3175
    .local v1, "fragment":Lorg/telegram/ui/ProfileActivity;
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_24
.end method

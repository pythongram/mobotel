.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$14;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    .prologue
    .line 993
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$14;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    .line 999
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$14;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1032
    :cond_d
    :goto_d
    return v10

    .line 1002
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_d

    .line 1003
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v8, v11

    .line 1004
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v9, v11

    .line 1005
    .local v9, "y":I
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$14;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    .line 1006
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_29
    if-ge v0, v3, :cond_d

    .line 1007
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$14;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1008
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1009
    .local v6, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1010
    .local v1, "bottom":I
    if-gt v6, v9, :cond_41

    if-ge v1, v9, :cond_44

    .line 1006
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 1013
    :cond_44
    instance-of v11, v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v11, :cond_d

    move-object v2, v7

    .line 1016
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1017
    .local v2, "cell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 1018
    .local v5, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v11

    if-nez v11, :cond_d

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isSecretPhoto()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    int-to-float v12, v8

    sub-int v13, v9, v6

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1021
    iget-object v11, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v4

    .line 1022
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1025
    iget-object v10, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$14;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    int-to-float v11, v8

    # setter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startX:F
    invoke-static {v10, v11}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4202(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;F)F

    .line 1026
    iget-object v10, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$14;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    int-to-float v11, v9

    # setter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->startY:F
    invoke-static {v10, v11}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$4302(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;F)F

    .line 1027
    iget-object v10, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$14;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v10}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1029
    const/4 v10, 0x1

    goto/16 :goto_d
.end method

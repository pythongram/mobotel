.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    .prologue
    .line 548
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 551
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v2, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 553
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 554
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 556
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_26
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->clearChatData()V
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    .line 557
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->DM_DeleteDownloaded(Ljava/util/ArrayList;)V

    .line 558
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->classGuid:I
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->DM_LoadMessagesByClassGuid(I)V

    .line 559
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 560
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->notifyDataSetChanged()V

    .line 562
    :cond_58
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 563
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 564
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$1;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 566
    :cond_83
    return-void
.end method

.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;
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
    .line 625
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 628
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v3, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    const/4 v0, 0x1

    .local v0, "a":I
    :goto_6
    if-ltz v0, :cond_35

    .line 630
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 631
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 632
    .local v2, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 629
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 635
    :cond_35
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # invokes: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->clearChatData()V
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)V

    .line 636
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->DM_DeleteMessage(Ljava/util/ArrayList;)V

    .line 637
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v5, v5, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->classGuid:I
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->DM_LoadMessagesByClassGuid(I)V

    .line 638
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-result-object v4

    if-eqz v4, :cond_67

    .line 639
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$ChatActivityAdapter;->notifyDataSetChanged()V

    .line 641
    :cond_67
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_92

    .line 642
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 643
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v5, v5, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->emptyViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 645
    :cond_92
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4$3;->this$1:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$4;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$2000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 646
    return-void
.end method

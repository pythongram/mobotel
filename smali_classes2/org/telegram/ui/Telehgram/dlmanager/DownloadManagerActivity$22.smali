.class Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;
.super Ljava/lang/Object;
.source "DownloadManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->checkListViewPaddings()V
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
    .line 1974
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 1978
    :try_start_1
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 1979
    .local v1, "firstVisPos":I
    const/4 v3, 0x0

    .line 1980
    .local v3, "top":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_27

    .line 1981
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1982
    .local v2, "firstVisView":Landroid/view/View;
    if-nez v2, :cond_9b

    :goto_1b
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v5

    sub-int v3, v4, v5

    .line 1984
    .end local v2    # "firstVisView":Landroid/view/View;
    :cond_27
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v4

    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-eq v4, v5, :cond_a1

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedMessageView:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedMessageView:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_61

    :cond_4d
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->reportSpamView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_a1

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->reportSpamView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a1

    .line 1985
    :cond_61
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 1986
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 1987
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1995
    :goto_8e
    const/4 v4, -0x1

    if-eq v1, v4, :cond_9a

    .line 1996
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$3900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2001
    .end local v1    # "firstVisPos":I
    .end local v3    # "top":I
    :cond_9a
    :goto_9a
    return-void

    .line 1982
    .restart local v1    # "firstVisPos":I
    .restart local v2    # "firstVisView":Landroid/view/View;
    .restart local v3    # "top":I
    :cond_9b
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    goto/16 :goto_1b

    .line 1988
    .end local v2    # "firstVisView":Landroid/view/View;
    :cond_a1
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-eq v4, v5, :cond_104

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedMessageView:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    if-eqz v4, :cond_c7

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->pinnedMessageView:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_104

    :cond_c7
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->reportSpamView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_db

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->reportSpamView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$5400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_104

    .line 1989
    :cond_db
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 1990
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity$22;->this$0:Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    # getter for: Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;->access$1600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 1991
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_101} :catch_106

    move-result v4

    add-int/2addr v3, v4

    goto :goto_8e

    .line 1993
    :cond_104
    const/4 v1, -0x1

    goto :goto_8e

    .line 1998
    .end local v1    # "firstVisPos":I
    .end local v3    # "top":I
    :catch_106
    move-exception v0

    .line 1999
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "tmessages"

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9a
.end method

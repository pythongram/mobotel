.class Lorg/telegram/ui/ChatActivity$18;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
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
.field private final scrollValue:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field private totalDy:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 2001
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 2003
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ChatActivity$18;->totalDy:F

    .line 2004
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChatActivity$18;->scrollValue:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .registers 6
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v2, 0x1

    .line 2008
    if-ne p2, v2, :cond_9

    .line 2009
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->scrollingFloatingDate:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$8202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 2014
    :cond_8
    :goto_8
    return-void

    .line 2010
    :cond_9
    if-nez p2, :cond_8

    .line 2011
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->scrollingFloatingDate:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$8202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 2012
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->hideFloatingDateView(Z)V
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$8300(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_8
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 16
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const v5, 0x7fffffff

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 2018
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->invalidate()V

    .line 2019
    if-eqz p3, :cond_a8

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->scrollingFloatingDate:Z
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-eqz v4, :cond_a8

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->currentFloatingTopIsNotMessage:Z
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-nez v4, :cond_a8

    .line 2020
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->highlightMessageId:I
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-eq v4, v5, :cond_33

    .line 2021
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->highlightMessageId:I
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$4502(Lorg/telegram/ui/ChatActivity;I)I

    .line 2022
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)V

    .line 2024
    :cond_33
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a8

    .line 2025
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v4

    if-eqz v4, :cond_50

    .line 2026
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2028
    :cond_50
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/ChatActionCell;->setTag(Ljava/lang/Object;)V

    .line 2029
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/ChatActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$8602(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2030
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v4

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2031
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-array v5, v10, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v6

    const-string v7, "alpha"

    new-array v8, v10, [F

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2032
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatActivity$18$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChatActivity$18$1;-><init>(Lorg/telegram/ui/ChatActivity$18;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2040
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 2043
    :cond_a8
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->checkScrollForLoad(Z)V
    invoke-static {v4, v10}, Lorg/telegram/ui/ChatActivity;->access$8700(Lorg/telegram/ui/ChatActivity;Z)V

    .line 2044
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 2045
    .local v0, "firstVisibleItem":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_e0

    move v2, v3

    .line 2046
    .local v2, "visibleItemCount":I
    :goto_bb
    if-lez v2, :cond_da

    .line 2047
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAdapter:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemCount()I

    move-result v1

    .line 2048
    .local v1, "totalItemCount":I
    add-int v4, v0, v2

    if-ne v4, v1, :cond_f2

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->forwardEndReached:[Z
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8900(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v4

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_f2

    .line 2049
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->showPagedownButton(ZZ)V
    invoke-static {v4, v3, v10}, Lorg/telegram/ui/ChatActivity;->access$9000(Lorg/telegram/ui/ChatActivity;ZZ)V

    .line 2071
    .end local v1    # "totalItemCount":I
    :cond_da
    :goto_da
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateMessagesVisisblePart()V
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$7800(Lorg/telegram/ui/ChatActivity;)V

    .line 2072
    return-void

    .line 2045
    .end local v2    # "visibleItemCount":I
    :cond_e0
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    goto :goto_bb

    .line 2051
    .restart local v1    # "totalItemCount":I
    .restart local v2    # "visibleItemCount":I
    :cond_f2
    if-lez p3, :cond_11c

    .line 2052
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pagedownButton:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_da

    .line 2053
    iget v3, p0, Lorg/telegram/ui/ChatActivity$18;->totalDy:F

    int-to-float v4, p3

    add-float/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/ChatActivity$18;->totalDy:F

    .line 2054
    iget v3, p0, Lorg/telegram/ui/ChatActivity$18;->totalDy:F

    iget v4, p0, Lorg/telegram/ui/ChatActivity$18;->scrollValue:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_da

    .line 2055
    iput v11, p0, Lorg/telegram/ui/ChatActivity$18;->totalDy:F

    .line 2056
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->showPagedownButton(ZZ)V
    invoke-static {v3, v10, v10}, Lorg/telegram/ui/ChatActivity;->access$9000(Lorg/telegram/ui/ChatActivity;ZZ)V

    .line 2057
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->pagedownButtonShowedByScroll:Z
    invoke-static {v3, v10}, Lorg/telegram/ui/ChatActivity;->access$9102(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_da

    .line 2061
    :cond_11c
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pagedownButtonShowedByScroll:Z
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$9100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-eqz v4, :cond_da

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pagedownButton:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_da

    .line 2062
    iget v4, p0, Lorg/telegram/ui/ChatActivity$18;->totalDy:F

    int-to-float v5, p3

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/ChatActivity$18;->totalDy:F

    .line 2063
    iget v4, p0, Lorg/telegram/ui/ChatActivity$18;->totalDy:F

    iget v5, p0, Lorg/telegram/ui/ChatActivity$18;->scrollValue:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_da

    .line 2064
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->showPagedownButton(ZZ)V
    invoke-static {v4, v3, v10}, Lorg/telegram/ui/ChatActivity;->access$9000(Lorg/telegram/ui/ChatActivity;ZZ)V

    .line 2065
    iput v11, p0, Lorg/telegram/ui/ChatActivity$18;->totalDy:F

    goto :goto_da
.end method

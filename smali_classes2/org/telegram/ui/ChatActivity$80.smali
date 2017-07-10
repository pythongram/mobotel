.class Lorg/telegram/ui/ChatActivity$80;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->checkListViewPaddings()V
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
    .line 8065
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 8069
    :try_start_1
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 8070
    .local v1, "firstVisPos":I
    const/4 v4, 0x0

    .line 8071
    .local v4, "top":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_27

    .line 8072
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 8073
    .local v2, "firstVisView":Landroid/view/View;
    if-nez v2, :cond_b8

    :goto_1b
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v6

    sub-int v4, v5, v6

    .line 8075
    .end local v2    # "firstVisView":Landroid/view/View;
    :cond_27
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v5

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-eq v5, v6, :cond_be

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pinnedMessageView:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    if-eqz v5, :cond_4d

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pinnedMessageView:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_61

    :cond_4d
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->reportSpamView:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_be

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->reportSpamView:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_be

    .line 8076
    :cond_61
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x42500000    # 52.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 8077
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatActionCell;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 8078
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 8079
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8080
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 8081
    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    .line 8092
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_ab
    const/4 v5, -0x1

    if-eq v1, v5, :cond_b7

    .line 8093
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 8098
    .end local v1    # "firstVisPos":I
    .end local v4    # "top":I
    :cond_b7
    :goto_b7
    return-void

    .line 8073
    .restart local v1    # "firstVisPos":I
    .restart local v2    # "firstVisView":Landroid/view/View;
    .restart local v4    # "top":I
    :cond_b8
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    goto/16 :goto_1b

    .line 8082
    .end local v2    # "firstVisView":Landroid/view/View;
    :cond_be
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-eq v5, v6, :cond_13f

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pinnedMessageView:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    if-eqz v5, :cond_e4

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pinnedMessageView:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_13f

    :cond_e4
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->reportSpamView:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_f8

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->reportSpamView:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_13f

    .line 8083
    :cond_f8
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 8084
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatActionCell;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 8085
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 8086
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8087
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 8088
    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13b} :catch_142

    move-result v5

    add-int/2addr v4, v5

    .line 8089
    goto/16 :goto_ab

    .line 8090
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_13f
    const/4 v1, -0x1

    goto/16 :goto_ab

    .line 8095
    .end local v1    # "firstVisPos":I
    .end local v4    # "top":I
    :catch_142
    move-exception v0

    .line 8096
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_b7
.end method

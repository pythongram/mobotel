.class Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;Lorg/telegram/ui/Components/RecyclerListView;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    .prologue
    .line 459
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->val$this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 502
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 503
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v0

    .line 504
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;
    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$1000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 505
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I
    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$400(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_49

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;
    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$1000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$400(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;->onItemClick(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 506
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 510
    .end local v0    # "child":Landroid/view/View;
    :cond_49
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 462
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_9b

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$300(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v3

    if-eqz v3, :cond_9b

    .line 463
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 464
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v2

    .line 465
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$400(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v0

    .line 466
    .local v0, "position":I
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->instantClick:Z
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$500(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v3

    if-eqz v3, :cond_4d

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4d

    .line 467
    invoke-virtual {v2, v6}, Landroid/view/View;->playSoundEffect(I)V

    .line 468
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$300(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 470
    :cond_4d
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;

    invoke-direct {v4, p0, v2, v0}, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;-><init>(Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;Landroid/view/View;I)V

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->access$602(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v3

    .line 486
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    int-to-long v4, v4

    .line 470
    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 488
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$700(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_9b

    .line 489
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v1

    .line 490
    .local v1, "pressedChild":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$700(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 491
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;
    invoke-static {v3, v8}, Lorg/telegram/ui/Components/RecyclerListView;->access$702(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 492
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v3, v8}, Lorg/telegram/ui/Components/RecyclerListView;->access$202(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)Landroid/view/View;

    .line 493
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z
    invoke-static {v3, v6}, Lorg/telegram/ui/Components/RecyclerListView;->access$802(Lorg/telegram/ui/Components/RecyclerListView;Z)Z

    .line 494
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # invokes: Lorg/telegram/ui/Components/RecyclerListView;->removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V
    invoke-static {v3, v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;->access$900(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 497
    .end local v0    # "position":I
    .end local v1    # "pressedChild":Landroid/view/View;
    .end local v2    # "view":Landroid/view/View;
    :cond_9b
    return v7
.end method

.class Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;
.super Ljava/lang/Object;
.source "RecyclerListView.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerListViewItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 458
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;-><init>(Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Landroid/view/GestureDetector;
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$102(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;

    .line 512
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 25
    .param p1, "view"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    .line 517
    .local v10, "action":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getScrollState()I

    move-result v2

    if-nez v2, :cond_1f5

    const/16 v17, 0x1

    .line 519
    .local v17, "isScrollIdle":Z
    :goto_10
    if-eqz v10, :cond_15

    const/4 v2, 0x5

    if-ne v10, v2, :cond_125

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_125

    if-eqz v17, :cond_125

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v3

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$202(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)Landroid/view/View;

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_b4

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float v20, v2, v3

    .line 523
    .local v20, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v21, v2, v3

    .line 524
    .local v21, "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    .line 525
    .local v19, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 526
    .local v13, "count":I
    add-int/lit8 v16, v13, -0x1

    .local v16, "i":I
    :goto_78
    if-ltz v16, :cond_b4

    .line 527
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 528
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v20, v2

    if-ltz v2, :cond_1f9

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v20, v2

    if-gtz v2, :cond_1f9

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v21, v2

    if-ltz v2, :cond_1f9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v21, v2

    if-gtz v2, :cond_1f9

    .line 529
    invoke-virtual {v11}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1f9

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$202(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)Landroid/view/View;

    .line 536
    .end local v11    # "child":Landroid/view/View;
    .end local v13    # "count":I
    .end local v16    # "i":I
    .end local v19    # "viewGroup":Landroid/view/ViewGroup;
    .end local v20    # "x":F
    .end local v21    # "y":F
    :cond_b4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$402(Lorg/telegram/ui/Components/RecyclerListView;I)I

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_125

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v3

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$402(Lorg/telegram/ui/Components/RecyclerListView;I)I

    .line 539
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v8}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v9}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 540
    .local v12, "childEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_122

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$802(Lorg/telegram/ui/Components/RecyclerListView;Z)Z

    .line 543
    :cond_122
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 547
    .end local v12    # "childEvent":Landroid/view/MotionEvent;
    :cond_125
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_148

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$800(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v2

    if-nez v2, :cond_148

    .line 549
    if-eqz p2, :cond_148

    .line 550
    :try_start_13b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Landroid/view/GestureDetector;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$100(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/GestureDetector;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_148} :catch_1fd

    .line 557
    :cond_148
    :goto_148
    if-eqz v10, :cond_14d

    const/4 v2, 0x5

    if-ne v10, v2, :cond_215

    .line 558
    :cond_14d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$800(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v2

    if-nez v2, :cond_1f3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1f3

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$2;-><init>(Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;)V

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$702(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$700(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_209

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I
    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$400(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v4}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v4

    # invokes: Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;)V
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->access$1100(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/view/View;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$1200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1ec

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$1200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 573
    .local v14, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_1d3

    instance-of v2, v14, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_1d3

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$1000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    move-result-object v2

    if-eqz v2, :cond_203

    .line 575
    check-cast v14, Landroid/graphics/drawable/TransitionDrawable;

    .end local v14    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 580
    :cond_1d3
    :goto_1d3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1ec

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$1200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 584
    :cond_1ec
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # invokes: Lorg/telegram/ui/Components/RecyclerListView;->updateSelectorState()V
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$1300(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 602
    :cond_1f3
    :goto_1f3
    const/4 v2, 0x0

    return v2

    .line 517
    .end local v17    # "isScrollIdle":Z
    :cond_1f5
    const/16 v17, 0x0

    goto/16 :goto_10

    .line 526
    .restart local v11    # "child":Landroid/view/View;
    .restart local v13    # "count":I
    .restart local v16    # "i":I
    .restart local v17    # "isScrollIdle":Z
    .restart local v19    # "viewGroup":Landroid/view/ViewGroup;
    .restart local v20    # "x":F
    .restart local v21    # "y":F
    :cond_1f9
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_78

    .line 552
    .end local v11    # "child":Landroid/view/View;
    .end local v13    # "count":I
    .end local v16    # "i":I
    .end local v19    # "viewGroup":Landroid/view/ViewGroup;
    .end local v20    # "x":F
    .end local v21    # "y":F
    :catch_1fd
    move-exception v15

    .line 553
    .local v15, "e":Ljava/lang/Exception;
    invoke-static {v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_148

    .line 577
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v14    # "d":Landroid/graphics/drawable/Drawable;
    :cond_203
    check-cast v14, Landroid/graphics/drawable/TransitionDrawable;

    .end local v14    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1d3

    .line 586
    :cond_209
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$1400(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1f3

    .line 589
    :cond_215
    const/4 v2, 0x1

    if-eq v10, v2, :cond_220

    const/4 v2, 0x6

    if-eq v10, v2, :cond_220

    const/4 v2, 0x3

    if-eq v10, v2, :cond_220

    if-nez v17, :cond_1f3

    .line 590
    :cond_220
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1f3

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$700(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_247

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$700(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$702(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 595
    :cond_247
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v18

    .line 596
    .local v18, "pressedChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$202(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)Landroid/view/View;

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->access$802(Lorg/telegram/ui/Components/RecyclerListView;Z)Z

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    # invokes: Lorg/telegram/ui/Components/RecyclerListView;->removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V
    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$900(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;Landroid/view/MotionEvent;)V

    goto/16 :goto_1f3
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 4
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 612
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 613
    return-void
.end method

.method public onTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 608
    return-void
.end method

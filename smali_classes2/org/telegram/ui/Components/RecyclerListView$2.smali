.class Lorg/telegram/ui/Components/RecyclerListView$2;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "RecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field scrollingByUser:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 707
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .registers 16
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const-wide/16 v0, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    .line 713
    if-eqz p2, :cond_60

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 714
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$700(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 715
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$700(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 716
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v12}, Lorg/telegram/ui/Components/RecyclerListView;->access$702(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 718
    :cond_26
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 720
    .local v10, "event":Landroid/view/MotionEvent;
    :try_start_2d
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$100(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_7a

    .line 724
    :goto_36
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 725
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v8

    .line 727
    .local v8, "child":Landroid/view/View;
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v0, v12}, Lorg/telegram/ui/Components/RecyclerListView;->access$202(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)Landroid/view/View;

    .line 729
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # invokes: Lorg/telegram/ui/Components/RecyclerListView;->removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V
    invoke-static {v0, v8, v12}, Lorg/telegram/ui/Components/RecyclerListView;->access$900(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z
    invoke-static {v0, v7}, Lorg/telegram/ui/Components/RecyclerListView;->access$802(Lorg/telegram/ui/Components/RecyclerListView;Z)Z

    .line 732
    .end local v8    # "child":Landroid/view/View;
    .end local v10    # "event":Landroid/view/MotionEvent;
    :cond_60
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$1600(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 733
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$1600(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V

    .line 735
    :cond_71
    if-eq p2, v11, :cond_76

    const/4 v0, 0x2

    if-ne p2, v0, :cond_77

    :cond_76
    move v7, v11

    :cond_77
    iput-boolean v7, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->scrollingByUser:Z

    .line 736
    return-void

    .line 721
    .restart local v10    # "event":Landroid/view/MotionEvent;
    :catch_7a
    move-exception v9

    .line 722
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_36
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 26
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$1600(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    move-result-object v19

    if-eqz v19, :cond_21

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$1600(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    .line 743
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$1700(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_bd

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$1400(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/graphics/Rect;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, p3

    neg-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Rect;->offset(II)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$1200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/Components/RecyclerListView;->access$1400(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->invalidate()V

    .line 750
    :goto_67
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->scrollingByUser:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$1800(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v19

    if-nez v19, :cond_93

    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$1900(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v19

    if-eqz v19, :cond_bc

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    move-result-object v19

    if-eqz v19, :cond_bc

    .line 751
    :cond_93
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v14

    .line 752
    .local v14, "layoutManager":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    instance-of v0, v14, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move/from16 v19, v0

    if-eqz v19, :cond_bc

    move-object v15, v14

    .line 753
    check-cast v15, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 754
    .local v15, "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-virtual {v15}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getOrientation()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_bc

    .line 755
    invoke-virtual {v15}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v9

    .line 756
    .local v9, "firstVisibleItem":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_cb

    .line 870
    .end local v9    # "firstVisibleItem":I
    .end local v14    # "layoutManager":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .end local v15    # "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    :cond_bc
    :goto_bc
    return-void

    .line 748
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$1400(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_67

    .line 759
    .restart local v9    # "firstVisibleItem":I
    .restart local v14    # "layoutManager":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .restart local v15    # "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    :cond_cb
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->scrollingByUser:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$1800(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v19

    if-eqz v19, :cond_10a

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v5

    .line 761
    .local v5, "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    instance-of v0, v5, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    move/from16 v19, v0

    if-eqz v19, :cond_10a

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$1800(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v19

    int-to-float v0, v9

    move/from16 v20, v0

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    # invokes: Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setProgress(F)V
    invoke-static/range {v19 .. v20}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->access$2100(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;F)V

    .line 765
    .end local v5    # "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    :cond_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    move-result-object v19

    if-eqz v19, :cond_bc

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$1900(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_374

    .line 767
    invoke-virtual {v15}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v19

    sub-int v19, v19, v9

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    add-int/lit8 v18, v19, 0x1

    .line 768
    .local v18, "visibleItemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2300(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/Components/RecyclerListView;->access$2200(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2200(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItemCount()I

    move-result v19

    if-eqz v19, :cond_bc

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2400(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v9, :cond_186

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentVisible:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2500(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_1f4

    .line 774
    :cond_186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I
    invoke-static {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView;->access$2402(Lorg/telegram/ui/Components/RecyclerListView;I)I

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->currentVisible:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$2502(Lorg/telegram/ui/Components/RecyclerListView;I)I

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I
    invoke-static/range {v19 .. v20}, Lorg/telegram/ui/Components/RecyclerListView;->access$2602(Lorg/telegram/ui/Components/RecyclerListView;I)I

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/Components/RecyclerListView;->access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v20

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->startSection:I
    invoke-static/range {v19 .. v20}, Lorg/telegram/ui/Components/RecyclerListView;->access$2702(Lorg/telegram/ui/Components/RecyclerListView;I)I

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->startSection:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/Components/RecyclerListView;->access$2700(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getCountForSection(I)I

    move-result v19

    add-int v19, v19, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/Components/RecyclerListView;->access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v20

    sub-int v13, v19, v20

    .line 781
    .local v13, "itemNum":I
    :goto_1ee
    add-int v19, v9, v18

    move/from16 v0, v19

    if-lt v13, v0, :cond_2c6

    .line 789
    .end local v13    # "itemNum":I
    :cond_1f4
    move v13, v9

    .line 790
    .restart local v13    # "itemNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->startSection:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2700(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v4

    .local v4, "a":I
    :goto_1ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->startSection:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2700(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/Components/RecyclerListView;->access$2600(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    if-ge v4, v0, :cond_bc

    .line 791
    const/4 v10, 0x0

    .line 792
    .local v10, "header":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2300(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_24b

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2300(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "header":Landroid/view/View;
    check-cast v10, Landroid/view/View;

    .line 794
    .restart local v10    # "header":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2300(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 796
    :cond_24b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lorg/telegram/ui/Components/RecyclerListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    invoke-static {v0, v4, v10}, Lorg/telegram/ui/Components/RecyclerListView;->access$2800(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2200(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getCountForSection(I)I

    move-result v8

    .line 799
    .local v8, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->startSection:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2700(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v19

    move/from16 v0, v19

    if-ne v4, v0, :cond_341

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v16

    .line 801
    .local v16, "pos":I
    add-int/lit8 v19, v8, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_2f7

    .line 802
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 819
    :goto_2ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v19

    sub-int v19, v8, v19

    add-int v13, v13, v19

    .line 790
    .end local v16    # "pos":I
    :goto_2c2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1ff

    .line 784
    .end local v4    # "a":I
    .end local v8    # "count":I
    .end local v10    # "header":Landroid/view/View;
    :cond_2c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->startSection:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/Components/RecyclerListView;->access$2700(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/Components/RecyclerListView;->access$2600(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getCountForSection(I)I

    move-result v19

    add-int v13, v13, v19

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # operator++ for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2608(Lorg/telegram/ui/Components/RecyclerListView;)I

    goto/16 :goto_1ee

    .line 803
    .restart local v4    # "a":I
    .restart local v8    # "count":I
    .restart local v10    # "header":Landroid/view/View;
    .restart local v16    # "pos":I
    :cond_2f7
    add-int/lit8 v19, v8, -0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_334

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    sub-int v20, v13, v9

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 806
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_31d

    .line 807
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v12

    .line 811
    .local v12, "headerTop":I
    :goto_311
    if-gez v12, :cond_327

    .line 812
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2ae

    .line 809
    .end local v12    # "headerTop":I
    :cond_31d
    const/high16 v19, 0x42c80000    # 100.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    move/from16 v0, v19

    neg-int v12, v0

    .restart local v12    # "headerTop":I
    goto :goto_311

    .line 814
    :cond_327
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2ae

    .line 817
    .end local v7    # "child":Landroid/view/View;
    .end local v12    # "headerTop":I
    :cond_334
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2ae

    .line 821
    .end local v16    # "pos":I
    :cond_341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    sub-int v20, v13, v9

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 822
    .restart local v7    # "child":Landroid/view/View;
    if-eqz v7, :cond_35f

    .line 823
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 827
    :goto_35c
    add-int/2addr v13, v8

    goto/16 :goto_2c2

    .line 825
    :cond_35f
    const/high16 v19, 0x42c80000    # 100.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_35c

    .line 830
    .end local v4    # "a":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v10    # "header":Landroid/view/View;
    .end local v13    # "itemNum":I
    .end local v18    # "visibleItemCount":I
    :cond_374
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$1900(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_bc

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItemCount()I

    move-result v19

    if-eqz v19, :cond_bc

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v17

    .line 835
    .local v17, "startSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2400(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2900(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v19

    if-nez v19, :cond_3f2

    .line 836
    :cond_3c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/Components/RecyclerListView;->access$2900(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v21

    # invokes: Lorg/telegram/ui/Components/RecyclerListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->access$2800(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/view/View;)Landroid/view/View;

    move-result-object v20

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;
    invoke-static/range {v19 .. v20}, Lorg/telegram/ui/Components/RecyclerListView;->access$2902(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)Landroid/view/View;

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$2402(Lorg/telegram/ui/Components/RecyclerListView;I)I

    .line 840
    :cond_3f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getCountForSection(I)I

    move-result v8

    .line 842
    .restart local v8    # "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v16

    .line 843
    .restart local v16    # "pos":I
    add-int/lit8 v19, v8, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_483

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 845
    .restart local v7    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2900(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 846
    .local v11, "headerHeight":I
    const/4 v12, 0x0

    .line 847
    .restart local v12    # "headerTop":I
    if-eqz v7, :cond_465

    .line 848
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v19

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v20

    add-int v6, v19, v20

    .line 849
    .local v6, "available":I
    if-ge v6, v11, :cond_447

    .line 850
    sub-int v12, v6, v11

    .line 855
    .end local v6    # "available":I
    :cond_447
    :goto_447
    if-gez v12, :cond_46f

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2900(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v19

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 864
    .end local v7    # "child":Landroid/view/View;
    .end local v11    # "headerHeight":I
    .end local v12    # "headerTop":I
    :goto_45a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->invalidate()V

    goto/16 :goto_bc

    .line 853
    .restart local v7    # "child":Landroid/view/View;
    .restart local v11    # "headerHeight":I
    .restart local v12    # "headerTop":I
    :cond_465
    const/high16 v19, 0x42c80000    # 100.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    move/from16 v0, v19

    neg-int v12, v0

    goto :goto_447

    .line 858
    :cond_46f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2900(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_45a

    .line 861
    .end local v7    # "child":Landroid/view/View;
    .end local v11    # "headerHeight":I
    .end local v12    # "headerTop":I
    :cond_483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->access$2900(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_45a
.end method

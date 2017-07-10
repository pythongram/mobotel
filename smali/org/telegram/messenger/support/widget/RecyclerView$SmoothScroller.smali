.class public abstract Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;,
        Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

.field private final mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 10662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10648
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10663
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-direct {v0, v1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    .line 10664
    return-void
.end method

.method static synthetic access$400(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;II)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 10646
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .registers 8
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 10758
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 10759
    .local v1, "recyclerView":Lorg/telegram/messenger/support/widget/RecyclerView;
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_d

    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    if-nez v1, :cond_10

    .line 10760
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    .line 10762
    :cond_10
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10763
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_32

    .line 10765
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v2, v3, :cond_57

    .line 10766
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V

    .line 10767
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 10768
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    .line 10774
    :cond_32
    :goto_32
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_56

    .line 10775
    iget-object v2, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V

    .line 10776
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v0

    .line 10777
    .local v0, "hadJumpTarget":Z
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 10778
    if-eqz v0, :cond_56

    .line 10780
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_62

    .line 10781
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10782
    iget-object v2, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 10788
    .end local v0    # "hadJumpTarget":Z
    :cond_56
    :goto_56
    return-void

    .line 10770
    :cond_57
    const-string v2, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10771
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    goto :goto_32

    .line 10784
    .restart local v0    # "hadJumpTarget":Z
    :cond_62
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_56
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 10808
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 10801
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 10794
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 10702
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .registers 2

    .prologue
    .line 10754
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .registers 3
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10817
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollToPosition(I)V

    .line 10818
    return-void
.end method

.method public isPendingInitialRun()Z
    .registers 2

    .prologue
    .line 10736
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 10744
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .registers 7
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .prologue
    .line 10834
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 10836
    .local v0, "magnitude":D
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 10837
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 10838
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 10821
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 10822
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10827
    :cond_c
    return-void
.end method

.method protected abstract onSeekTargetStep(IILorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .registers 2
    .param p1, "targetPosition"    # I

    .prologue
    .line 10693
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10694
    return-void
.end method

.method start(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V
    .registers 6
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .prologue
    const/4 v2, 0x1

    .line 10679
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 10680
    iput-object p2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .line 10681
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 10682
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10684
    :cond_12
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTargetPosition:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1102(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    .line 10685
    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 10686
    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10687
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10688
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onStart()V

    .line 10689
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 10690
    return-void
.end method

.method protected final stop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 10712
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_8

    .line 10726
    :goto_7
    return-void

    .line 10715
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 10716
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTargetPosition:I
    invoke-static {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1102(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    .line 10717
    iput-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10718
    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10719
    iput-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10720
    iput-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 10722
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    # invokes: Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V
    invoke-static {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->access$1200(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V

    .line 10724
    iput-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .line 10725
    iput-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    goto :goto_7
.end method

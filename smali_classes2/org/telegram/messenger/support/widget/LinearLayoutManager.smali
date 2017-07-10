.class public Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.super Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ViewDropHandler;
.implements Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;,
        Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;,
        Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;,
        Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

.field private mInitialItemPrefetchCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;

.field private mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

.field mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;-><init>()V

    .line 97
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 104
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 111
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 117
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 129
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    .line 139
    new-instance v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;-><init>(Lorg/telegram/messenger/support/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    .line 144
    new-instance v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutChunkResult:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    .line 167
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 168
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 169
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 170
    return-void
.end method

.method private computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 8
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1078
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 1082
    :goto_8
    return v4

    .line 1081
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1082
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_29

    move v0, v3

    .line 1083
    :goto_13
    invoke-direct {p0, v0, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1c

    move v4, v3

    .line 1084
    :cond_1c
    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1082
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/ScrollbarHelper;->computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_8

    :cond_29
    move v0, v4

    goto :goto_13
.end method

.method private computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 9
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1067
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 1071
    :goto_8
    return v4

    .line 1070
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1071
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2b

    move v0, v3

    .line 1072
    :goto_13
    invoke-direct {p0, v0, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1c

    move v4, v3

    .line 1073
    :cond_1c
    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    .line 1071
    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/support/widget/ScrollbarHelper;->computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v4

    goto :goto_8

    :cond_2b
    move v0, v4

    goto :goto_13
.end method

.method private computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 8
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1089
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 1093
    :goto_8
    return v4

    .line 1092
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1093
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_29

    move v0, v3

    .line 1094
    :goto_13
    invoke-direct {p0, v0, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1c

    move v4, v3

    .line 1095
    :cond_1c
    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1093
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/ScrollbarHelper;->computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_8

    :cond_29
    move v0, v4

    goto :goto_13
.end method

.method private findFirstReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .registers 9
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1726
    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .registers 5
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1682
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_e

    .line 1683
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1686
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_d
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .registers 5
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1664
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_10

    .line 1665
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1668
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_f
.end method

.method private findLastReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .registers 9
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1730
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findReferenceChildClosestToEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .registers 4
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1704
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_8
    return-object v0

    .line 1705
    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method private findReferenceChildClosestToStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .registers 4
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1721
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_8
    return-object v0

    .line 1722
    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method private fixLayoutEndGap(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I
    .registers 8
    .param p1, "endOffset"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .prologue
    .line 863
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v1, v2, p1

    .line 864
    .local v1, "gap":I
    const/4 v0, 0x0

    .line 865
    .local v0, "fixOffset":I
    if-lez v1, :cond_26

    .line 866
    neg-int v2, v1

    invoke-virtual {p0, v2, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v2

    neg-int v0, v2

    .line 871
    add-int/2addr p1, v0

    .line 872
    if-eqz p4, :cond_28

    .line 874
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v1, v2, p1

    .line 875
    if-lez v1, :cond_28

    .line 876
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->offsetChildren(I)V

    .line 877
    add-int v2, v1, v0

    .line 880
    :goto_25
    return v2

    .line 868
    :cond_26
    const/4 v2, 0x0

    goto :goto_25

    :cond_28
    move v2, v0

    .line 880
    goto :goto_25
.end method

.method private fixLayoutStartGap(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I
    .registers 9
    .param p1, "startOffset"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .prologue
    .line 888
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v1, p1, v2

    .line 889
    .local v1, "gap":I
    const/4 v0, 0x0

    .line 890
    .local v0, "fixOffset":I
    if-lez v1, :cond_26

    .line 892
    invoke-virtual {p0, v1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v2

    neg-int v0, v2

    .line 896
    add-int/2addr p1, v0

    .line 897
    if-eqz p4, :cond_28

    .line 899
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v1, p1, v2

    .line 900
    if-lez v1, :cond_28

    .line 901
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->offsetChildren(I)V

    .line 902
    sub-int v2, v0, v1

    .line 905
    :goto_25
    return v2

    .line 894
    :cond_26
    const/4 v2, 0x0

    goto :goto_25

    :cond_28
    move v2, v0

    .line 905
    goto :goto_25
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .registers 2

    .prologue
    .line 1652
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_a
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_5
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .registers 2

    .prologue
    .line 1642
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private layoutForPredictiveAnimations(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V
    .registers 18
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "startOffset"    # I
    .param p4, "endOffset"    # I

    .prologue
    .line 657
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v11

    if-eqz v11, :cond_18

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v11

    if-nez v11, :cond_18

    .line 658
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v11

    if-nez v11, :cond_19

    .line 704
    :cond_18
    :goto_18
    return-void

    .line 662
    :cond_19
    const/4 v8, 0x0

    .local v8, "scrapExtraStart":I
    const/4 v7, 0x0

    .line 663
    .local v7, "scrapExtraEnd":I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v9

    .line 664
    .local v9, "scrapList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 665
    .local v10, "scrapSize":I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 666
    .local v3, "firstChildPos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2d
    if-ge v4, v10, :cond_65

    .line 667
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 668
    .local v6, "scrap":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_3e

    .line 666
    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 671
    :cond_3e
    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    .line 672
    .local v5, "position":I
    if-ge v5, v3, :cond_57

    const/4 v11, 0x1

    :goto_45
    iget-boolean v12, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v11, v12, :cond_59

    const/4 v2, -0x1

    .line 674
    .local v2, "direction":I
    :goto_4a
    const/4 v11, -0x1

    if-ne v2, v11, :cond_5b

    .line 675
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-object v12, v6, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    add-int/2addr v8, v11

    goto :goto_3b

    .line 672
    .end local v2    # "direction":I
    :cond_57
    const/4 v11, 0x0

    goto :goto_45

    :cond_59
    const/4 v2, 0x1

    goto :goto_4a

    .line 677
    .restart local v2    # "direction":I
    :cond_5b
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-object v12, v6, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    add-int/2addr v7, v11

    goto :goto_3b

    .line 685
    .end local v2    # "direction":I
    .end local v5    # "position":I
    .end local v6    # "scrap":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_65
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput-object v9, v11, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 686
    if-lez v8, :cond_8c

    .line 687
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 688
    .local v1, "anchor":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 689
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput v8, v11, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 690
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput v12, v11, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 691
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 692
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, p2, v12}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 695
    .end local v1    # "anchor":Landroid/view/View;
    :cond_8c
    if-lez v7, :cond_af

    .line 696
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 697
    .restart local v1    # "anchor":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move/from16 v0, p4

    invoke-direct {p0, v11, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 698
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput v7, v11, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 699
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput v12, v11, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 700
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 701
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, p2, v12}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 703
    .end local v1    # "anchor":Landroid/view/View;
    :cond_af
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput-object v12, v11, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    goto/16 :goto_18
.end method

.method private logChildren()V
    .registers 6

    .prologue
    .line 1918
    const-string v2, "LinearLayoutManager"

    const-string v3, "internal representation of views on the screen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 1920
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1921
    .local v0, "child":Landroid/view/View;
    const-string v2, "LinearLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1922
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1921
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1924
    .end local v0    # "child":Landroid/view/View;
    :cond_41
    const-string v2, "LinearLayoutManager"

    const-string v3, "=============="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    return-void
.end method

.method private recycleByLayoutState(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;)V
    .registers 5
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    .prologue
    .line 1435
    iget-boolean v0, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v0, :cond_9

    .line 1443
    :cond_8
    :goto_8
    return-void

    .line 1438
    :cond_9
    iget v0, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 1439
    iget v0, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleViewsFromEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V

    goto :goto_8

    .line 1441
    :cond_14
    iget v0, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleViewsFromStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V

    goto :goto_8
.end method

.method private recycleChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;II)V
    .registers 5
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 1318
    if-ne p2, p3, :cond_3

    .line 1333
    :cond_2
    return-void

    .line 1324
    :cond_3
    if-le p3, p2, :cond_f

    .line 1325
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_7
    if-lt v0, p2, :cond_2

    .line 1326
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 1325
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1329
    .end local v0    # "i":I
    :cond_f
    move v0, p2

    .restart local v0    # "i":I
    :goto_10
    if-le v0, p3, :cond_2

    .line 1330
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 1329
    add-int/lit8 v0, v0, -0x1

    goto :goto_10
.end method

.method private recycleViewsFromEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V
    .registers 8
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "dt"    # I

    .prologue
    .line 1391
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1392
    .local v1, "childCount":I
    if-gez p2, :cond_7

    .line 1421
    :cond_6
    :goto_6
    return-void

    .line 1399
    :cond_7
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEnd()I

    move-result v4

    sub-int v3, v4, p2

    .line 1400
    .local v3, "limit":I
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_32

    .line 1401
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_6

    .line 1402
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1403
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_2a

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1404
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2f

    .line 1406
    :cond_2a
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;II)V

    goto :goto_6

    .line 1401
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1411
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_32
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_34
    if-ltz v2, :cond_6

    .line 1412
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1413
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_4a

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1414
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_50

    .line 1416
    :cond_4a
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;II)V

    goto :goto_6

    .line 1411
    :cond_50
    add-int/lit8 v2, v2, -0x1

    goto :goto_34
.end method

.method private recycleViewsFromStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V
    .registers 8
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "dt"    # I

    .prologue
    .line 1346
    if-gez p2, :cond_3

    .line 1377
    :cond_2
    :goto_2
    return-void

    .line 1354
    :cond_3
    move v3, p2

    .line 1355
    .local v3, "limit":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1356
    .local v1, "childCount":I
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_2d

    .line 1357
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_2

    .line 1358
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1359
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, v3, :cond_24

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1360
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_2a

    .line 1362
    :cond_24
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;II)V

    goto :goto_2

    .line 1357
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 1367
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_2d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2e
    if-ge v2, v1, :cond_2

    .line 1368
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1369
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, v3, :cond_44

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1370
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_49

    .line 1372
    :cond_44
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;II)V

    goto :goto_2

    .line 1367
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e
.end method

.method private resolveShouldLayoutReverse()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 337
    iget v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_b

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_10

    .line 338
    :cond_b
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 342
    :goto_f
    return-void

    .line 340
    :cond_10
    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_17

    :goto_14
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_f

    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private updateAnchorFromChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)Z
    .registers 11
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 736
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_9

    .line 769
    :cond_8
    :goto_8
    return v3

    .line 739
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 740
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_1a

    invoke-virtual {p3, v0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 741
    invoke-virtual {p3, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    move v3, v4

    .line 742
    goto :goto_8

    .line 744
    :cond_1a
    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v5, v6, :cond_8

    .line 747
    iget-boolean v5, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_66

    .line 748
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    .line 750
    .local v2, "referenceChild":Landroid/view/View;
    :goto_28
    if-eqz v2, :cond_8

    .line 751
    invoke-virtual {p3, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 754
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_64

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 756
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 757
    invoke-virtual {v5, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 758
    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_55

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 759
    invoke-virtual {v5, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 760
    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_6b

    :cond_55
    move v1, v4

    .line 761
    .local v1, "notVisible":Z
    :goto_56
    if-eqz v1, :cond_64

    .line 762
    iget-boolean v3, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_6d

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 763
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 764
    :goto_62
    iput v3, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .end local v1    # "notVisible":Z
    :cond_64
    move v3, v4

    .line 767
    goto :goto_8

    .line 749
    .end local v2    # "referenceChild":Landroid/view/View;
    :cond_66
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    goto :goto_28

    .restart local v2    # "referenceChild":Landroid/view/View;
    :cond_6b
    move v1, v3

    .line 760
    goto :goto_56

    .line 763
    .restart local v1    # "notVisible":Z
    :cond_6d
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 764
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    goto :goto_62
.end method

.method private updateAnchorFromPendingData(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)Z
    .registers 14
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p2, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    const/4 v10, -0x1

    const/high16 v9, -0x80000000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 777
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_f

    iget v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v5, v10, :cond_11

    :cond_f
    move v6, v7

    .line 855
    :goto_10
    return v6

    .line 781
    :cond_11
    iget v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ltz v5, :cond_1d

    iget v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-lt v5, v8, :cond_23

    .line 782
    :cond_1d
    iput v10, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 783
    iput v9, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move v6, v7

    .line 787
    goto :goto_10

    .line 792
    :cond_23
    iget v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 793
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-eqz v5, :cond_59

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 796
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    iget-boolean v5, v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 797
    iget-boolean v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_4b

    .line 798
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    iget v7, v7, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v5, v7

    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_10

    .line 801
    :cond_4b
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    iget v7, v7, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v5, v7

    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_10

    .line 807
    :cond_59
    iget v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v5, v9, :cond_ec

    .line 808
    iget v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 809
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_cb

    .line 810
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 811
    .local v1, "childSize":I
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v5

    if-le v1, v5, :cond_77

    .line 813
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_10

    .line 816
    :cond_77
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 817
    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int v4, v5, v8

    .line 818
    .local v4, "startGap":I
    if-gez v4, :cond_93

    .line 819
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 820
    iput-boolean v7, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_10

    .line 823
    :cond_93
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 824
    invoke-virtual {v7, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    sub-int v2, v5, v7

    .line 825
    .local v2, "endGap":I
    if-gez v2, :cond_af

    .line 826
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 827
    iput-boolean v6, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_10

    .line 830
    :cond_af
    iget-boolean v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_c4

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 831
    invoke-virtual {v5, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 832
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v7

    add-int/2addr v5, v7

    .line 833
    :goto_c0
    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_10

    .line 832
    :cond_c4
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 833
    invoke-virtual {v5, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    goto :goto_c0

    .line 835
    .end local v1    # "childSize":I
    .end local v2    # "endGap":I
    .end local v4    # "startGap":I
    :cond_cb
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_e5

    .line 837
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 838
    .local v3, "pos":I
    iget v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v5, v3, :cond_ea

    move v5, v6

    :goto_de
    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v5, v8, :cond_e3

    move v7, v6

    :cond_e3
    iput-boolean v7, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 841
    .end local v3    # "pos":I
    :cond_e5
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto/16 :goto_10

    .restart local v3    # "pos":I
    :cond_ea
    move v5, v7

    .line 838
    goto :goto_de

    .line 846
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "pos":I
    :cond_ec
    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 848
    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_101

    .line 849
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget v7, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v5, v7

    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_10

    .line 852
    :cond_101
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iget v7, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v5, v7

    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_10
.end method

.method private updateAnchorInfoForLayout(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 5
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 708
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateAnchorFromPendingData(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 726
    :cond_6
    :goto_6
    return-void

    .line 715
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateAnchorFromChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 724
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 725
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1a
    iput v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_6

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private updateLayoutState(IIZLorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .registers 12
    .param p1, "layoutDirection"    # I
    .param p2, "requiredSpace"    # I
    .param p3, "canUseExistingSpace"    # Z
    .param p4, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 1134
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 1135
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getExtraLayoutSpace(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1136
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput p1, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1138
    if-ne p1, v3, :cond_6a

    .line 1139
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget v5, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndPadding()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1141
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    .line 1143
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_68

    :goto_2f
    iput v2, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1145
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1146
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1148
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1149
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v1, v2, v3

    .line 1161
    .local v1, "scrollingOffset":I
    :goto_56
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput p2, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1162
    if-eqz p3, :cond_63

    .line 1163
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v3, v1

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1165
    :cond_63
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput v1, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1166
    return-void

    .end local v1    # "scrollingOffset":I
    :cond_68
    move v2, v3

    .line 1143
    goto :goto_2f

    .line 1152
    .end local v0    # "child":Landroid/view/View;
    :cond_6a
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    .line 1153
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget v5, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1154
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_aa

    :goto_81
    iput v3, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1156
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1157
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1158
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1159
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int v1, v2, v3

    .restart local v1    # "scrollingOffset":I
    goto :goto_56

    .end local v1    # "scrollingOffset":I
    :cond_aa
    move v3, v2

    .line 1154
    goto :goto_81
.end method

.method private updateLayoutStateToFillEnd(II)V
    .registers 6
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x1

    .line 913
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 914
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_28

    const/4 v0, -0x1

    :goto_13
    iput v0, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 916
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 917
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput v1, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 918
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput p2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 919
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 920
    return-void

    :cond_28
    move v0, v1

    .line 914
    goto :goto_13
.end method

.method private updateLayoutStateToFillEnd(Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 4
    .param p1, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 909
    iget v0, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 910
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .registers 6
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, -0x1

    .line 927
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 928
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 929
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_18
    iput v0, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 931
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput v1, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 932
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput p2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 933
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 935
    return-void

    :cond_29
    move v0, v1

    .line 929
    goto :goto_18
.end method

.method private updateLayoutStateToFillStart(Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 4
    .param p1, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 923
    iget v0, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 924
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1306
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_7

    .line 1307
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1309
    :cond_7
    return-void
.end method

.method public canScrollHorizontally()Z
    .registers 2

    .prologue
    .line 274
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public canScrollVertically()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 282
    iget v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public collectAdjacentPrefetchPositions(IILorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 10
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    const/4 v3, 0x1

    .line 1266
    iget v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-nez v4, :cond_f

    move v1, p1

    .line 1267
    .local v1, "delta":I
    :goto_6
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_e

    if-nez v1, :cond_11

    .line 1276
    :cond_e
    :goto_e
    return-void

    .end local v1    # "delta":I
    :cond_f
    move v1, p2

    .line 1266
    goto :goto_6

    .line 1272
    .restart local v1    # "delta":I
    :cond_11
    if-lez v1, :cond_21

    move v2, v3

    .line 1273
    .local v2, "layoutDirection":I
    :goto_14
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1274
    .local v0, "absDy":I
    invoke-direct {p0, v2, v0, v3, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutState(IIZLorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 1275
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p3, v3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_e

    .line 1272
    .end local v0    # "absDy":I
    .end local v2    # "layoutDirection":I
    :cond_21
    const/4 v2, -0x1

    goto :goto_14
.end method

.method public collectInitialPrefetchPositions(ILorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 10
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 1186
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-eqz v6, :cond_29

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1188
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    iget-boolean v2, v6, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1189
    .local v2, "fromEnd":Z
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    iget v0, v6, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 1200
    .local v0, "anchorPos":I
    :goto_16
    if-eqz v2, :cond_3c

    .line 1203
    .local v1, "direction":I
    :goto_18
    move v4, v0

    .line 1204
    .local v4, "targetPos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    iget v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    if-ge v3, v6, :cond_3e

    .line 1205
    if-ltz v4, :cond_3e

    if-ge v4, p1, :cond_3e

    .line 1206
    invoke-interface {p2, v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1210
    add-int/2addr v4, v1

    .line 1204
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1191
    .end local v0    # "anchorPos":I
    .end local v1    # "direction":I
    .end local v2    # "fromEnd":Z
    .end local v3    # "i":I
    .end local v4    # "targetPos":I
    :cond_29
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1192
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1193
    .restart local v2    # "fromEnd":Z
    iget v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v6, v1, :cond_39

    .line 1194
    if-eqz v2, :cond_37

    add-int/lit8 v0, p1, -0x1

    .restart local v0    # "anchorPos":I
    :goto_36
    goto :goto_16

    .end local v0    # "anchorPos":I
    :cond_37
    move v0, v5

    goto :goto_36

    .line 1196
    :cond_39
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .restart local v0    # "anchorPos":I
    goto :goto_16

    .line 1200
    :cond_3c
    const/4 v1, 0x1

    goto :goto_18

    .line 1212
    .restart local v1    # "direction":I
    .restart local v3    # "i":I
    .restart local v4    # "targetPos":I
    :cond_3e
    return-void
.end method

.method collectPrefetchPositionsForLayoutState(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 6
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p2, "layoutState"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;
    .param p3, "layoutPrefetchRegistry"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    .line 1175
    iget v0, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1176
    .local v0, "pos":I
    if-ltz v0, :cond_f

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 1177
    iget v1, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-interface {p3, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1179
    :cond_f
    return-void
.end method

.method public computeHorizontalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1048
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1038
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1058
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 8
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 429
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_b

    .line 430
    const/4 v2, 0x0

    .line 437
    :goto_a
    return-object v2

    .line 432
    :cond_b
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 433
    .local v1, "firstChildPos":I
    if-ge p1, v1, :cond_16

    move v2, v3

    :cond_16
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v4, :cond_26

    const/4 v0, -0x1

    .line 434
    .local v0, "direction":I
    :goto_1b
    iget v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_28

    .line 435
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_a

    .end local v0    # "direction":I
    :cond_26
    move v0, v3

    .line 433
    goto :goto_1b

    .line 437
    .restart local v0    # "direction":I
    :cond_28
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_a
.end method

.method public computeVerticalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1043
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method convertFocusDirectionToLayoutDirection(I)I
    .registers 6
    .param p1, "focusDirection"    # I

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    .line 1597
    sparse-switch p1, :sswitch_data_3e

    move v0, v1

    .line 1630
    :cond_8
    :goto_8
    return v0

    .line 1599
    :sswitch_9
    iget v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-eq v1, v2, :cond_8

    .line 1601
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v2

    .line 1602
    goto :goto_8

    .line 1607
    :sswitch_15
    iget v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_1b

    move v0, v2

    .line 1608
    goto :goto_8

    .line 1609
    :cond_1b
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_8

    move v0, v2

    .line 1612
    goto :goto_8

    .line 1615
    :sswitch_23
    iget v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-eq v3, v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 1618
    :sswitch_29
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, v2, :cond_2e

    move v1, v2

    :cond_2e
    move v0, v1

    goto :goto_8

    .line 1621
    :sswitch_30
    iget v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 1624
    :sswitch_36
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_3c

    :goto_3a
    move v0, v2

    goto :goto_8

    :cond_3c
    move v2, v1

    goto :goto_3a

    .line 1597
    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_15
        0x11 -> :sswitch_30
        0x21 -> :sswitch_23
        0x42 -> :sswitch_36
        0x82 -> :sswitch_29
    .end sparse-switch
.end method

.method createLayoutState()Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;
    .registers 2

    .prologue
    .line 956
    new-instance v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method ensureLayoutState()V
    .registers 2

    .prologue
    .line 942
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_a

    .line 943
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->createLayoutState()Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    .line 945
    :cond_a
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    if-nez v0, :cond_16

    .line 946
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->createOrientationHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;I)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 948
    :cond_16
    return-void
.end method

.method fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I
    .registers 12
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p4, "stopOnFocusable"    # Z

    .prologue
    const/high16 v6, -0x80000000

    .line 1459
    iget v2, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1460
    .local v2, "start":I
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v3, v6, :cond_16

    .line 1462
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v3, :cond_13

    .line 1463
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v4

    iput v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1465
    :cond_13
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleByLayoutState(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;)V

    .line 1467
    :cond_16
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v4, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    add-int v1, v3, v4

    .line 1468
    .local v1, "remainingSpace":I
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutChunkResult:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;

    .line 1469
    .local v0, "layoutChunkResult":Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;
    :cond_1e
    iget-boolean v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v3, :cond_24

    if-lez v1, :cond_34

    :cond_24
    invoke-virtual {p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->hasMore(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1470
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1471
    invoke-virtual {p0, p1, p3, p2, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->layoutChunk(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1472
    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v3, :cond_39

    .line 1503
    :cond_34
    :goto_34
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int v3, v2, v3

    return v3

    .line 1475
    :cond_39
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1482
    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v3, :cond_53

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_53

    .line 1483
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 1484
    :cond_53
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v3, v4

    iput v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1486
    iget v3, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v3

    .line 1489
    :cond_5d
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v3, v6, :cond_76

    .line 1490
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v3, v4

    iput v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1491
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v3, :cond_73

    .line 1492
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v4

    iput v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1494
    :cond_73
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleByLayoutState(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;)V

    .line 1496
    :cond_76
    if-eqz p4, :cond_1e

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v3, :cond_1e

    goto :goto_34
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1799
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1800
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_e

    const/4 v1, -0x1

    :goto_d
    return v1

    :cond_e
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_d
.end method

.method public findFirstVisibleItemPosition()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1782
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v3, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1783
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_e

    const/4 v1, -0x1

    :goto_d
    return v1

    :cond_e
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_d
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 1839
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1840
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_10

    :goto_f
    return v1

    :cond_10
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_f
.end method

.method public findLastVisibleItemPosition()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 1822
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1823
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_10

    :goto_f
    return v1

    :cond_10
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_f
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .registers 14
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z
    .param p4, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1845
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1846
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    .line 1847
    .local v7, "start":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 1848
    .local v3, "end":I
    if-le p2, p1, :cond_31

    const/4 v5, 0x1

    .line 1849
    .local v5, "next":I
    :goto_12
    const/4 v6, 0x0

    .line 1850
    .local v6, "partiallyVisible":Landroid/view/View;
    move v4, p1

    .local v4, "i":I
    :goto_14
    if-eq v4, p2, :cond_3a

    .line 1851
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1852
    .local v0, "child":Landroid/view/View;
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 1853
    .local v2, "childStart":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    .line 1854
    .local v1, "childEnd":I
    if-ge v2, v3, :cond_38

    if-le v1, v7, :cond_38

    .line 1855
    if-eqz p3, :cond_30

    .line 1856
    if-lt v2, v7, :cond_33

    if-gt v1, v3, :cond_33

    .line 1866
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childEnd":I
    .end local v2    # "childStart":I
    :cond_30
    :goto_30
    return-object v0

    .line 1848
    .end local v4    # "i":I
    .end local v5    # "next":I
    .end local v6    # "partiallyVisible":Landroid/view/View;
    :cond_31
    const/4 v5, -0x1

    goto :goto_12

    .line 1858
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childEnd":I
    .restart local v2    # "childStart":I
    .restart local v4    # "i":I
    .restart local v5    # "next":I
    .restart local v6    # "partiallyVisible":Landroid/view/View;
    :cond_33
    if-eqz p4, :cond_38

    if-nez v6, :cond_38

    .line 1859
    move-object v6, v0

    .line 1850
    :cond_38
    add-int/2addr v4, v5

    goto :goto_14

    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childEnd":I
    .end local v2    # "childStart":I
    :cond_3a
    move-object v0, v6

    .line 1866
    goto :goto_30
.end method

.method findReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;III)Landroid/view/View;
    .registers 15
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .prologue
    .line 1736
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1737
    const/4 v4, 0x0

    .line 1738
    .local v4, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 1739
    .local v5, "outOfBoundsMatch":Landroid/view/View;
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 1740
    .local v1, "boundsStart":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1741
    .local v0, "boundsEnd":I
    if-le p4, p3, :cond_34

    const/4 v2, 0x1

    .line 1742
    .local v2, "diff":I
    :goto_14
    move v3, p3

    .local v3, "i":I
    :goto_15
    if-eq v3, p4, :cond_4a

    .line 1743
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1744
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 1745
    .local v6, "position":I
    if-ltz v6, :cond_32

    if-ge v6, p5, :cond_32

    .line 1746
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v8

    if-eqz v8, :cond_36

    .line 1747
    if-nez v4, :cond_32

    .line 1748
    move-object v4, v7

    .line 1742
    :cond_32
    :goto_32
    add-int/2addr v3, v2

    goto :goto_15

    .line 1741
    .end local v2    # "diff":I
    .end local v3    # "i":I
    .end local v6    # "position":I
    .end local v7    # "view":Landroid/view/View;
    :cond_34
    const/4 v2, -0x1

    goto :goto_14

    .line 1750
    .restart local v2    # "diff":I
    .restart local v3    # "i":I
    .restart local v6    # "position":I
    .restart local v7    # "view":Landroid/view/View;
    :cond_36
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    if-ge v8, v0, :cond_46

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1751
    invoke-virtual {v8, v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    if-ge v8, v1, :cond_4d

    .line 1752
    :cond_46
    if-nez v5, :cond_32

    .line 1753
    move-object v5, v7

    goto :goto_32

    .line 1760
    .end local v6    # "position":I
    .end local v7    # "view":Landroid/view/View;
    :cond_4a
    if-eqz v5, :cond_4e

    .end local v5    # "outOfBoundsMatch":Landroid/view/View;
    :goto_4c
    move-object v7, v5

    :cond_4d
    return-object v7

    .restart local v5    # "outOfBoundsMatch":Landroid/view/View;
    :cond_4e
    move-object v5, v4

    goto :goto_4c
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 382
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 383
    .local v1, "childCount":I
    if-nez v1, :cond_8

    .line 384
    const/4 v0, 0x0

    .line 395
    :cond_7
    :goto_7
    return-object v0

    .line 386
    :cond_8
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 387
    .local v2, "firstChild":I
    sub-int v3, p1, v2

    .line 388
    .local v3, "viewPosition":I
    if-ltz v3, :cond_21

    if-ge v3, v1, :cond_21

    .line 389
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-eq v4, p1, :cond_7

    .line 395
    .end local v0    # "child":Landroid/view/View;
    :cond_21
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_7
.end method

.method public generateDefaultLayoutParams()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 177
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 411
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 412
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    .line 414
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getInitialItemPrefetchCount()I
    .registers 2

    .prologue
    .line 1260
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 308
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .registers 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .registers 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .registers 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method protected isLayoutRTL()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 938
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSmoothScrollbarEnabled()Z
    .registers 2

    .prologue
    .line 1128
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method layoutChunk(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 16
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "layoutState"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1508
    invoke-virtual {p3, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->next(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v1

    .line 1509
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_c

    .line 1515
    iput-boolean v7, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1577
    :goto_b
    return-void

    .line 1518
    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 1519
    .local v6, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v0, :cond_74

    .line 1520
    iget-boolean v9, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_6e

    move v0, v7

    :goto_1d
    if-ne v9, v0, :cond_70

    .line 1522
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    .line 1534
    :goto_22
    invoke-virtual {p0, v1, v8, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1535
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1537
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, v7, :cond_9d

    .line 1538
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1539
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v8

    sub-int v4, v0, v8

    .line 1540
    .local v4, "right":I
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    sub-int v2, v4, v0

    .line 1545
    .local v2, "left":I
    :goto_49
    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_94

    .line 1546
    iget v5, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1547
    .local v5, "bottom":I
    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v8, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v3, v0, v8

    .local v3, "top":I
    :goto_55
    move-object v0, p0

    .line 1566
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1573
    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_65

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1574
    :cond_65
    iput-boolean v7, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1576
    :cond_67
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    goto :goto_b

    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    :cond_6e
    move v0, v8

    .line 1520
    goto :goto_1d

    .line 1524
    :cond_70
    invoke-virtual {p0, v1, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_22

    .line 1527
    :cond_74
    iget-boolean v9, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_81

    move v0, v7

    :goto_7b
    if-ne v9, v0, :cond_83

    .line 1529
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_22

    :cond_81
    move v0, v8

    .line 1527
    goto :goto_7b

    .line 1531
    :cond_83
    invoke-virtual {p0, v1, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_22

    .line 1542
    :cond_87
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 1543
    .restart local v2    # "left":I
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v2, v0

    .restart local v4    # "right":I
    goto :goto_49

    .line 1549
    :cond_94
    iget v3, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1550
    .restart local v3    # "top":I
    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v8, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int v5, v0, v8

    .restart local v5    # "bottom":I
    goto :goto_55

    .line 1553
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    :cond_9d
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v3

    .line 1554
    .restart local v3    # "top":I
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v5, v3, v0

    .line 1556
    .restart local v5    # "bottom":I
    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_b6

    .line 1557
    iget v4, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1558
    .restart local v4    # "right":I
    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v8, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v2, v0, v8

    .restart local v2    # "left":I
    goto :goto_55

    .line 1560
    .end local v2    # "left":I
    .end local v4    # "right":I
    :cond_b6
    iget v2, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1561
    .restart local v2    # "left":I
    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v8, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int v4, v0, v8

    .restart local v4    # "right":I
    goto :goto_55
.end method

.method onAnchorReady(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 5
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "firstLayoutItemDirection"    # I

    .prologue
    .line 646
    return-void
.end method

.method public onDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .registers 4
    .param p1, "view"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .prologue
    .line 211
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 212
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v0, :cond_d

    .line 213
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->removeAndRecycleAllViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 214
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clear()V

    .line 216
    :cond_d
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .registers 15
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p4, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/high16 v7, -0x80000000

    const/4 v4, 0x0

    .line 1872
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1873
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_10

    move-object v2, v4

    .line 1910
    :cond_f
    :goto_f
    return-object v2

    .line 1877
    :cond_10
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v0

    .line 1878
    .local v0, "layoutDir":I
    if-ne v0, v7, :cond_18

    move-object v2, v4

    .line 1879
    goto :goto_f

    .line 1881
    :cond_18
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1883
    if-ne v0, v8, :cond_25

    .line 1884
    invoke-direct {p0, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .line 1888
    .local v3, "referenceChild":Landroid/view/View;
    :goto_21
    if-nez v3, :cond_2a

    move-object v2, v4

    .line 1893
    goto :goto_f

    .line 1886
    .end local v3    # "referenceChild":Landroid/view/View;
    :cond_25
    invoke-direct {p0, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "referenceChild":Landroid/view/View;
    goto :goto_21

    .line 1895
    :cond_2a
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1896
    const v5, 0x3eaaaaab

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 1897
    .local v1, "maxScroll":I
    invoke-direct {p0, v0, v1, v9, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutState(IIZLorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 1898
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput v7, v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1899
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput-boolean v9, v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1900
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/4 v6, 0x1

    invoke-virtual {p0, p3, v5, p4, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 1902
    if-ne v0, v8, :cond_5a

    .line 1903
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 1907
    .local v2, "nextFocus":Landroid/view/View;
    :goto_50
    if-eq v2, v3, :cond_58

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_f

    :cond_58
    move-object v2, v4

    .line 1908
    goto :goto_f

    .line 1905
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_5a
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .restart local v2    # "nextFocus":Landroid/view/View;
    goto :goto_50
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 220
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 221
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1b

    .line 223
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 224
    .local v0, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 225
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 227
    .end local v0    # "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    :cond_1b
    return-void
.end method

.method public onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .registers 23
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    if-nez v17, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_20

    .line 457
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    if-nez v17, :cond_20

    .line 458
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->removeAndRecycleAllViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 624
    :goto_1f
    return-void

    .line 462
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v17

    if-eqz v17, :cond_46

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 466
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 469
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c0

    .line 473
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v19, v0

    xor-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 487
    :cond_c0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getExtraLayoutSpace(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v8

    .line 490
    .local v8, "extra":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    move/from16 v17, v0

    if-ltz v17, :cond_2fb

    .line 491
    move v9, v8

    .line 492
    .local v9, "extraForEnd":I
    const/4 v10, 0x0

    .line 497
    .local v10, "extraForStart":I
    :goto_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v17

    add-int v10, v10, v17

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndPadding()I

    move-result v17

    add-int v9, v9, v17

    .line 499
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v17

    if-eqz v17, :cond_14e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_14e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v17, v0

    const/high16 v18, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_14e

    .line 504
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    .line 505
    .local v7, "existing":Landroid/view/View;
    if-eqz v7, :cond_14e

    .line 508
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2ff

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v18, v0

    .line 510
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v18

    sub-int v5, v17, v18

    .line 511
    .local v5, "current":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v17, v0

    sub-int v16, v5, v17

    .line 517
    .local v16, "upcomingOffset":I
    :goto_14a
    if-lez v16, :cond_321

    .line 518
    add-int v10, v10, v16

    .line 527
    .end local v5    # "current":I
    .end local v7    # "existing":Landroid/view/View;
    .end local v16    # "upcomingOffset":I
    :cond_14e
    :goto_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_328

    .line 528
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_325

    const/4 v12, 0x1

    .line 535
    .local v12, "firstLayoutDirection":I
    :goto_165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v12}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onAnchorReady(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 536
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_335

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 545
    .local v15, "startOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v11, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 546
    .local v11, "firstElement":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_203

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    add-int v9, v9, v17

    .line 550
    :cond_203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 556
    .local v6, "endOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_29f

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v10, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 559
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 594
    .end local v11    # "firstElement":I
    :cond_29f
    :goto_29f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v17

    if-lez v17, :cond_2d5

    .line 598
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v18, v0

    xor-int v17, v17, v18

    if-eqz v17, :cond_42f

    .line 599
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v6, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fixLayoutEndGap(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    move-result v13

    .line 600
    .local v13, "fixOffset":I
    add-int/2addr v15, v13

    .line 601
    add-int/2addr v6, v13

    .line 602
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v15, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fixLayoutStartGap(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    move-result v13

    .line 603
    add-int/2addr v15, v13

    .line 604
    add-int/2addr v6, v13

    .line 614
    .end local v13    # "fixOffset":I
    :cond_2d5
    :goto_2d5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v17

    if-nez v17, :cond_451

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->onLayoutComplete()V

    .line 620
    :goto_2ed
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    goto/16 :goto_1f

    .line 494
    .end local v6    # "endOffset":I
    .end local v9    # "extraForEnd":I
    .end local v10    # "extraForStart":I
    .end local v12    # "firstLayoutDirection":I
    .end local v15    # "startOffset":I
    :cond_2fb
    move v10, v8

    .line 495
    .restart local v10    # "extraForStart":I
    const/4 v9, 0x0

    .restart local v9    # "extraForEnd":I
    goto/16 :goto_d8

    .line 513
    .restart local v7    # "existing":Landroid/view/View;
    :cond_2ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v18, v0

    .line 514
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v18

    sub-int v5, v17, v18

    .line 515
    .restart local v5    # "current":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v17, v0

    sub-int v16, v17, v5

    .restart local v16    # "upcomingOffset":I
    goto/16 :goto_14a

    .line 520
    :cond_321
    sub-int v9, v9, v16

    goto/16 :goto_14e

    .line 528
    .end local v5    # "current":I
    .end local v7    # "existing":Landroid/view/View;
    .end local v16    # "upcomingOffset":I
    :cond_325
    const/4 v12, -0x1

    goto/16 :goto_165

    .line 531
    :cond_328
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_333

    const/4 v12, -0x1

    .restart local v12    # "firstLayoutDirection":I
    :goto_331
    goto/16 :goto_165

    .end local v12    # "firstLayoutDirection":I
    :cond_333
    const/4 v12, 0x1

    goto :goto_331

    .line 566
    .restart local v12    # "firstLayoutDirection":I
    :cond_335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 570
    .restart local v6    # "endOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 571
    .local v14, "lastElement":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_391

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    add-int v10, v10, v17

    .line 575
    :cond_391
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 581
    .restart local v15    # "startOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_29f

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v9, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 584
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    goto/16 :goto_29f

    .line 606
    .end local v14    # "lastElement":I
    :cond_42f
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v15, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fixLayoutStartGap(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    move-result v13

    .line 607
    .restart local v13    # "fixOffset":I
    add-int/2addr v15, v13

    .line 608
    add-int/2addr v6, v13

    .line 609
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v6, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fixLayoutEndGap(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    move-result v13

    .line 610
    add-int/2addr v15, v13

    .line 611
    add-int/2addr v6, v13

    goto/16 :goto_2d5

    .line 618
    .end local v13    # "fixOffset":I
    :cond_451
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->reset()V

    goto/16 :goto_2ed
.end method

.method public onLayoutCompleted(Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 628
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 629
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    .line 630
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 631
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 632
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 633
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 258
    instance-of v0, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_b

    .line 259
    check-cast p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    .line 260
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->requestLayout()V

    .line 267
    :cond_b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 231
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-eqz v3, :cond_c

    .line 232
    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;-><init>(Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;)V

    .line 253
    :goto_b
    return-object v2

    .line 234
    :cond_c
    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    invoke-direct {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 235
    .local v2, "state":Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_58

    .line 236
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 237
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int v0, v3, v4

    .line 238
    .local v0, "didLayoutFromEnd":Z
    iput-boolean v0, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 239
    if-eqz v0, :cond_3e

    .line 240
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 241
    .local v1, "refChild":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 242
    invoke-virtual {v4, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 243
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_b

    .line 245
    .end local v1    # "refChild":Landroid/view/View;
    :cond_3e
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 246
    .restart local v1    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 247
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 248
    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_b

    .line 251
    .end local v0    # "didLayoutFromEnd":Z
    .end local v1    # "refChild":Landroid/view/View;
    :cond_58
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    goto :goto_b
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 1988
    const-string v5, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1989
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1990
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1991
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1992
    .local v1, "myPos":I
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1993
    .local v2, "targetPos":I
    if-ge v1, v2, :cond_36

    move v0, v3

    .line 1995
    .local v0, "dropDirection":I
    :goto_18
    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_49

    .line 1996
    if-ne v0, v3, :cond_38

    .line 1997
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1998
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1999
    invoke-virtual {v4, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2000
    invoke-virtual {v5, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 1997
    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2015
    :goto_35
    return-void

    .end local v0    # "dropDirection":I
    :cond_36
    move v0, v4

    .line 1993
    goto :goto_18

    .line 2002
    .restart local v0    # "dropDirection":I
    :cond_38
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2003
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2004
    invoke-virtual {v4, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2002
    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_35

    .line 2007
    :cond_49
    if-ne v0, v4, :cond_55

    .line 2008
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_35

    .line 2010
    :cond_55
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2011
    invoke-virtual {v3, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2012
    invoke-virtual {v4, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2010
    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_35
.end method

.method resolveIsInfinite()Z
    .registers 2

    .prologue
    .line 1169
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getMode()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1170
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEnd()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 1169
    :goto_11
    return v0

    .line 1170
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 10
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1279
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_a

    if-nez p1, :cond_b

    .line 1301
    :cond_a
    :goto_a
    return v3

    .line 1282
    :cond_b
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput-boolean v4, v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1283
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1284
    if-lez p1, :cond_39

    move v2, v4

    .line 1285
    .local v2, "layoutDirection":I
    :goto_15
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1286
    .local v0, "absDy":I
    invoke-direct {p0, v2, v0, v4, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutState(IIZLorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 1287
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    .line 1288
    invoke-virtual {p0, p2, v5, p3, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    move-result v5

    add-int v1, v4, v5

    .line 1289
    .local v1, "consumed":I
    if-ltz v1, :cond_a

    .line 1295
    if-le v0, v1, :cond_3b

    mul-int v3, v2, v1

    .line 1296
    .local v3, "scrolled":I
    :goto_2e
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    neg-int v5, v3

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->offsetChildren(I)V

    .line 1300
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput v3, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    goto :goto_a

    .line 1284
    .end local v0    # "absDy":I
    .end local v1    # "consumed":I
    .end local v2    # "layoutDirection":I
    .end local v3    # "scrolled":I
    :cond_39
    const/4 v2, -0x1

    goto :goto_15

    .restart local v0    # "absDy":I
    .restart local v1    # "consumed":I
    .restart local v2    # "layoutDirection":I
    :cond_3b
    move v3, p1

    .line 1295
    goto :goto_2e
.end method

.method public scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 6
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1018
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1019
    const/4 v0, 0x0

    .line 1021
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_6
.end method

.method public scrollToPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 975
    iput p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 976
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 977
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_f

    .line 978
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 980
    :cond_f
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->requestLayout()V

    .line 981
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 1003
    iput p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1004
    iput p2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1005
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_d

    .line 1006
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1008
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->requestLayout()V

    .line 1009
    return-void
.end method

.method public scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1030
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_6

    .line 1031
    const/4 v0, 0x0

    .line 1033
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_5
.end method

.method public setInitialPrefetchItemCount(I)V
    .registers 2
    .param p1, "itemCount"    # I

    .prologue
    .line 1244
    iput p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    .line 1245
    return-void
.end method

.method public setOrientation(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 318
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_1f
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 322
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_27

    .line 328
    :goto_26
    return-void

    .line 325
    :cond_27
    iput p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    .line 326
    iput-object v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 327
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->requestLayout()V

    goto :goto_26
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .registers 2
    .param p1, "recycleChildrenOnDetach"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 207
    return-void
.end method

.method public setReverseLayout(Z)V
    .registers 3
    .param p1, "reverseLayout"    # Z

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 370
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_9

    .line 375
    :goto_8
    return-void

    .line 373
    :cond_9
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 374
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->requestLayout()V

    goto :goto_8
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1117
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1118
    return-void
.end method

.method public setStackFromEnd(Z)V
    .registers 3
    .param p1, "stackFromEnd"    # Z

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 290
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_9

    .line 295
    :goto_8
    return-void

    .line 293
    :cond_9
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 294
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->requestLayout()V

    goto :goto_8
.end method

.method shouldMeasureTwice()Z
    .registers 3

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 1581
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getHeightMode()I

    move-result v0

    if-eq v0, v1, :cond_16

    .line 1582
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getWidthMode()I

    move-result v0

    if-eq v0, v1, :cond_16

    .line 1583
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->hasFlexibleChildInBothOrientations()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 1581
    :goto_15
    return v0

    .line 1583
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public smoothScrollToPosition(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)V
    .registers 6
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 421
    new-instance v0, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;

    .line 422
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 423
    .local v0, "linearSmoothScroller":Lorg/telegram/messenger/support/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 424
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->startSmoothScroll(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V

    .line 425
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 3

    .prologue
    .line 1979
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method validateChildOrder()V
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1938
    const-string v8, "LinearLayoutManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "validating child count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v8, v6, :cond_25

    .line 1975
    :cond_24
    return-void

    .line 1942
    :cond_25
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1943
    .local v2, "lastPos":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 1944
    .local v3, "lastScreenLoc":I
    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_82

    .line 1945
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_3c
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_24

    .line 1946
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1947
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1948
    .local v4, "pos":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1949
    .local v5, "screenLoc":I
    if-ge v4, v2, :cond_72

    .line 1950
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->logChildren()V

    .line 1951
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ge v5, v3, :cond_70

    :goto_64
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_70
    move v6, v7

    goto :goto_64

    .line 1954
    :cond_72
    if-le v5, v3, :cond_7f

    .line 1955
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->logChildren()V

    .line 1956
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "detected invalid location"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1945
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 1960
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v4    # "pos":I
    .end local v5    # "screenLoc":I
    :cond_82
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_83
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_24

    .line 1961
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1962
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1963
    .restart local v4    # "pos":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1964
    .restart local v5    # "screenLoc":I
    if-ge v4, v2, :cond_b9

    .line 1965
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->logChildren()V

    .line 1966
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ge v5, v3, :cond_b7

    :goto_ab
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_b7
    move v6, v7

    goto :goto_ab

    .line 1969
    :cond_b9
    if-ge v5, v3, :cond_c6

    .line 1970
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->logChildren()V

    .line 1971
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "detected invalid location"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1960
    :cond_c6
    add-int/lit8 v1, v1, 0x1

    goto :goto_83
.end method

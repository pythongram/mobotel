.class public Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;
.super Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;,
        Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;,
        Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;,
        Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "StaggeredGridLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mPrefetchDistances:[I

.field mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemainingSpans:Ljava/util/BitSet;

.field mReverseLayout:Z

.field mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .registers 6
    .param p1, "spanCount"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;-><init>()V

    .line 112
    iput v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 135
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 140
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 151
    iput v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 157
    const/high16 v2, -0x80000000

    iput v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 163
    new-instance v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 168
    const/4 v2, 0x2

    iput v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 194
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 199
    new-instance v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 207
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 213
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 221
    new-instance v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$1;-><init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 236
    iput p2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 237
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 238
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v2, :cond_4c

    :goto_3e
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 239
    new-instance v0, Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/LayoutState;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    .line 240
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    .line 241
    return-void

    :cond_4c
    move v0, v1

    .line 238
    goto :goto_3e
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1757
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_10

    .line 1758
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    .line 1757
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1760
    :cond_10
    return-void
.end method

.method private applyPendingSavedState(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .registers 6
    .param p1, "anchorInfo"    # Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    .prologue
    .line 771
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v2, :cond_50

    .line 772
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v2, v3, :cond_43

    .line 773
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_50

    .line 774
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 775
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v1, v2, v0

    .line 776
    .local v1, "line":I
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_31

    .line 777
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v2, :cond_3b

    .line 778
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 783
    :cond_31
    :goto_31
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 773
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 780
    :cond_3b
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_31

    .line 786
    .end local v0    # "i":I
    .end local v1    # "line":I
    :cond_43
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 787
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 790
    :cond_50
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 791
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 792
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 794
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8b

    .line 795
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 796
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v2, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 800
    :goto_73
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_8a

    .line 801
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 802
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 804
    :cond_8a
    return-void

    .line 798
    :cond_8b
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v2, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_73
.end method

.method private attachViewToSpans(Landroid/view/View;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;Lorg/telegram/messenger/support/widget/LayoutState;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    .param p3, "layoutState"    # Lorg/telegram/messenger/support/widget/LayoutState;

    .prologue
    .line 1701
    iget v0, p3, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 1702
    iget-boolean v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_d

    .line 1703
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    .line 1714
    :goto_c
    return-void

    .line 1705
    :cond_d
    iget-object v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_c

    .line 1708
    :cond_13
    iget-boolean v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_1b

    .line 1709
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_c

    .line 1711
    :cond_1b
    iget-object v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    goto :goto_c
.end method

.method private calculateScrollDirectionForPosition(I)I
    .registers 7
    .param p1, "position"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1994
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-nez v3, :cond_f

    .line 1995
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_d

    .line 1998
    :goto_c
    return v1

    :cond_d
    move v1, v2

    .line 1995
    goto :goto_c

    .line 1997
    :cond_f
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    .line 1998
    .local v0, "firstChildPos":I
    if-ge p1, v0, :cond_1c

    move v3, v1

    :goto_16
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v3, v4, :cond_1e

    :goto_1a
    move v1, v2

    goto :goto_c

    :cond_1c
    const/4 v3, 0x0

    goto :goto_16

    :cond_1e
    move v2, v1

    goto :goto_1a
.end method

.method private checkSpanForGap(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)Z
    .registers 9
    .param p1, "span"    # Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 387
    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_2d

    .line 388
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 390
    iget-object v5, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    iget-object v6, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 391
    .local v0, "endView":Landroid/view/View;
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 392
    .local v1, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v5, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-nez v5, :cond_2b

    .line 400
    .end local v0    # "endView":Landroid/view/View;
    .end local v1    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_2a
    :goto_2a
    return v3

    .restart local v0    # "endView":Landroid/view/View;
    .restart local v1    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_2b
    move v3, v4

    .line 392
    goto :goto_2a

    .line 394
    .end local v0    # "endView":Landroid/view/View;
    .end local v1    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_2d
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    if-le v5, v6, :cond_4b

    .line 396
    iget-object v5, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 397
    .local v2, "startView":Landroid/view/View;
    invoke-virtual {p1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 398
    .restart local v1    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v5, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_2a

    move v3, v4

    goto :goto_2a

    .end local v1    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v2    # "startView":Landroid/view/View;
    :cond_4b
    move v3, v4

    .line 400
    goto :goto_2a
.end method

.method private computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 8
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1077
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 1080
    :goto_8
    return v4

    :cond_9
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_25

    move v0, v3

    .line 1081
    :goto_10
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_27

    .line 1082
    :goto_18
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1080
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/ScrollbarHelper;->computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_8

    :cond_25
    move v0, v4

    goto :goto_10

    :cond_27
    move v3, v4

    .line 1081
    goto :goto_18
.end method

.method private computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 9
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1057
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 1060
    :goto_8
    return v4

    :cond_9
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_27

    move v0, v3

    .line 1061
    :goto_10
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_29

    .line 1062
    :goto_18
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    .line 1060
    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/support/widget/ScrollbarHelper;->computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v4

    goto :goto_8

    :cond_27
    move v0, v4

    goto :goto_10

    :cond_29
    move v3, v4

    .line 1061
    goto :goto_18
.end method

.method private computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 8
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1097
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 1100
    :goto_8
    return v4

    :cond_9
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_25

    move v0, v3

    .line 1101
    :goto_10
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_27

    .line 1102
    :goto_18
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1100
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/ScrollbarHelper;->computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_8

    :cond_25
    move v0, v4

    goto :goto_10

    :cond_27
    move v3, v4

    .line 1101
    goto :goto_18
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .registers 6
    .param p1, "focusDirection"    # I

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    .line 2302
    sparse-switch p1, :sswitch_data_3e

    move v0, v1

    .line 2335
    :cond_8
    :goto_8
    return v0

    .line 2304
    :sswitch_9
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-eq v1, v2, :cond_8

    .line 2306
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v2

    .line 2307
    goto :goto_8

    .line 2312
    :sswitch_15
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_1b

    move v0, v2

    .line 2313
    goto :goto_8

    .line 2314
    :cond_1b
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_8

    move v0, v2

    .line 2317
    goto :goto_8

    .line 2320
    :sswitch_23
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-eq v3, v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 2323
    :sswitch_29
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v2, :cond_2e

    move v1, v2

    :cond_2e
    move v0, v1

    goto :goto_8

    .line 2326
    :sswitch_30
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 2329
    :sswitch_36
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_3c

    :goto_3a
    move v0, v2

    goto :goto_8

    :cond_3c
    move v2, v1

    goto :goto_3a

    .line 2302
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

.method private createFullSpanItemFromEnd(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .registers 6
    .param p1, "newItemTop"    # I

    .prologue
    .line 1683
    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1684
    .local v0, "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1685
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_21

    .line 1686
    iget-object v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    .line 1685
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1688
    :cond_21
    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .registers 6
    .param p1, "newItemBottom"    # I

    .prologue
    .line 1692
    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1693
    .local v0, "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1694
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_20

    .line 1695
    iget-object v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    .line 1694
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1697
    :cond_20
    return-object v0
.end method

.method private createOrientationHelpers()V
    .registers 2

    .prologue
    .line 244
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->createOrientationHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;I)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 245
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v0, v0, 0x1

    .line 246
    invoke-static {p0, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->createOrientationHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;I)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 247
    return-void
.end method

.method private fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 32
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lorg/telegram/messenger/support/widget/LayoutState;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1526
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Ljava/util/BitSet;->set(IIZ)V

    .line 1531
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-boolean v3, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mInfinite:Z

    if-eqz v3, :cond_177

    .line 1532
    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_173

    .line 1533
    const v27, 0x7fffffff

    .line 1545
    .local v27, "targetLine":I
    :goto_1f
    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1552
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_196

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1553
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v18

    .line 1555
    .local v18, "defaultNewViewLine":I
    :goto_38
    const/4 v15, 0x0

    .line 1556
    .local v15, "added":Z
    :goto_39
    invoke-virtual/range {p2 .. p3}, Lorg/telegram/messenger/support/widget/LayoutState;->hasMore(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_2b2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-boolean v3, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mInfinite:Z

    if-nez v3, :cond_51

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 1557
    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b2

    .line 1558
    :cond_51
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LayoutState;->next(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v4

    .line 1559
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1560
    .local v22, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v25

    .line 1561
    .local v25, "position":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v26

    .line 1563
    .local v26, "spanIndex":I
    const/4 v3, -0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_1a0

    const/16 v16, 0x1

    .line 1564
    .local v16, "assignSpan":Z
    :goto_74
    if-eqz v16, :cond_1ae

    .line 1565
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_1a4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    const/4 v9, 0x0

    aget-object v17, v3, v9

    .line 1566
    .local v17, "currentSpan":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    :goto_83
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)V

    .line 1577
    :goto_8e
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    iput-object v0, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    .line 1578
    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_1b6

    .line 1579
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    .line 1583
    :goto_a0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v1, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;Z)V

    .line 1587
    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_1c4

    .line 1588
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_1be

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v6

    .line 1590
    .local v6, "start":I
    :goto_bd
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int v8, v6, v3

    .line 1591
    .local v8, "end":I
    if-eqz v16, :cond_e9

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_e9

    .line 1593
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    .line 1594
    .local v20, "fullSpanItem":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    const/4 v3, -0x1

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1595
    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1596
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1612
    .end local v20    # "fullSpanItem":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_e9
    :goto_e9
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_fd

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mItemDirection:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_fd

    .line 1613
    if-eqz v16, :cond_205

    .line 1614
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 1632
    :cond_fd
    :goto_fd
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;Lorg/telegram/messenger/support/widget/LayoutState;)V

    .line 1635
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_259

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_259

    .line 1636
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_23d

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    .line 1639
    .local v7, "otherEnd":I
    :goto_121
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int v5, v7, v3

    .line 1647
    .local v5, "otherStart":I
    :goto_12b
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_287

    move-object/from16 v3, p0

    .line 1648
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1653
    :goto_137
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_293

    .line 1654
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v3, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1658
    :goto_14a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->recycle(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-boolean v3, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mStopInFocusable:Z

    if-eqz v3, :cond_170

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_170

    .line 1660
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_2a4

    .line 1661
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 1666
    :cond_170
    :goto_170
    const/4 v15, 0x1

    .line 1667
    goto/16 :goto_39

    .line 1535
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "otherStart":I
    .end local v6    # "start":I
    .end local v7    # "otherEnd":I
    .end local v8    # "end":I
    .end local v15    # "added":Z
    .end local v16    # "assignSpan":Z
    .end local v17    # "currentSpan":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    .end local v18    # "defaultNewViewLine":I
    .end local v22    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v25    # "position":I
    .end local v26    # "spanIndex":I
    .end local v27    # "targetLine":I
    :cond_173
    const/high16 v27, -0x80000000

    .restart local v27    # "targetLine":I
    goto/16 :goto_1f

    .line 1538
    .end local v27    # "targetLine":I
    :cond_177
    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_18a

    .line 1539
    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    move-object/from16 v0, p2

    iget v9, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    add-int v27, v3, v9

    .restart local v27    # "targetLine":I
    goto/16 :goto_1f

    .line 1541
    .end local v27    # "targetLine":I
    :cond_18a
    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    move-object/from16 v0, p2

    iget v9, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    sub-int v27, v3, v9

    .restart local v27    # "targetLine":I
    goto/16 :goto_1f

    .line 1553
    :cond_196
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1554
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v18

    goto/16 :goto_38

    .line 1563
    .restart local v4    # "view":Landroid/view/View;
    .restart local v15    # "added":Z
    .restart local v18    # "defaultNewViewLine":I
    .restart local v22    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    .restart local v25    # "position":I
    .restart local v26    # "spanIndex":I
    :cond_1a0
    const/16 v16, 0x0

    goto/16 :goto_74

    .line 1565
    .restart local v16    # "assignSpan":Z
    :cond_1a4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getNextSpan(Lorg/telegram/messenger/support/widget/LayoutState;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    move-result-object v17

    goto/16 :goto_83

    .line 1574
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v17, v3, v26

    .restart local v17    # "currentSpan":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    goto/16 :goto_8e

    .line 1581
    :cond_1b6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_a0

    .line 1589
    :cond_1be
    invoke-virtual/range {v17 .. v18}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v6

    goto/16 :goto_bd

    .line 1599
    :cond_1c4
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_200

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v8

    .line 1601
    .restart local v8    # "end":I
    :goto_1d2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int v6, v8, v3

    .line 1602
    .restart local v6    # "start":I
    if-eqz v16, :cond_e9

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_e9

    .line 1604
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    .line 1605
    .restart local v20    # "fullSpanItem":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1606
    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1607
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    goto/16 :goto_e9

    .line 1600
    .end local v6    # "start":I
    .end local v8    # "end":I
    .end local v20    # "fullSpanItem":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_200
    invoke-virtual/range {v17 .. v18}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v8

    goto :goto_1d2

    .line 1617
    .restart local v6    # "start":I
    .restart local v8    # "end":I
    :cond_205
    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_231

    .line 1618
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v3

    if-nez v3, :cond_22e

    const/16 v21, 0x1

    .line 1622
    .local v21, "hasInvalidGap":Z
    :goto_214
    if-eqz v21, :cond_fd

    .line 1623
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1624
    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    .line 1625
    .restart local v20    # "fullSpanItem":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v20, :cond_227

    .line 1626
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 1628
    :cond_227
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto/16 :goto_fd

    .line 1618
    .end local v20    # "fullSpanItem":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .end local v21    # "hasInvalidGap":Z
    :cond_22e
    const/16 v21, 0x0

    goto :goto_214

    .line 1620
    :cond_231
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v3

    if-nez v3, :cond_23a

    const/16 v21, 0x1

    .restart local v21    # "hasInvalidGap":Z
    :goto_239
    goto :goto_214

    .end local v21    # "hasInvalidGap":Z
    :cond_23a
    const/16 v21, 0x0

    goto :goto_239

    .line 1636
    :cond_23d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1637
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v17

    iget v10, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v9, v10

    sub-int v7, v3, v9

    goto/16 :goto_121

    .line 1641
    :cond_259
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_273

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    .line 1644
    .restart local v5    # "otherStart":I
    :goto_267
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int v7, v5, v3

    .restart local v7    # "otherEnd":I
    goto/16 :goto_12b

    .line 1641
    .end local v5    # "otherStart":I
    .end local v7    # "otherEnd":I
    :cond_273
    move-object/from16 v0, v17

    iget v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v3, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1643
    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    add-int v5, v3, v9

    goto :goto_267

    .restart local v5    # "otherStart":I
    .restart local v7    # "otherEnd":I
    :cond_287
    move-object/from16 v9, p0

    move-object v10, v4

    move v11, v6

    move v12, v5

    move v13, v8

    move v14, v7

    .line 1650
    invoke-virtual/range {v9 .. v14}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_137

    .line 1656
    :cond_293
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v3, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v27

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;II)V

    goto/16 :goto_14a

    .line 1663
    :cond_2a4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v0, v17

    iget v9, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_170

    .line 1668
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "otherStart":I
    .end local v6    # "start":I
    .end local v7    # "otherEnd":I
    .end local v8    # "end":I
    .end local v16    # "assignSpan":Z
    .end local v17    # "currentSpan":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    .end local v22    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v25    # "position":I
    .end local v26    # "spanIndex":I
    :cond_2b2
    if-nez v15, :cond_2bf

    .line 1669
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->recycle(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;)V

    .line 1672
    :cond_2bf
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v3, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_2ed

    .line 1673
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v24

    .line 1674
    .local v24, "minStart":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v19, v3, v24

    .line 1679
    .end local v24    # "minStart":I
    .local v19, "diff":I
    :goto_2e0
    if-lez v19, :cond_306

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    move/from16 v0, v19

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2ec
    return v3

    .line 1676
    .end local v19    # "diff":I
    :cond_2ed
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v23

    .line 1677
    .local v23, "maxEnd":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v19, v23, v3

    .restart local v19    # "diff":I
    goto :goto_2e0

    .line 1679
    .end local v23    # "maxEnd":I
    :cond_306
    const/4 v3, 0x0

    goto :goto_2ec
.end method

.method private findFirstReferenceChildPosition(I)I
    .registers 6
    .param p1, "itemCount"    # I

    .prologue
    .line 2167
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    .line 2168
    .local v1, "limit":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_17

    .line 2169
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2170
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 2171
    .local v2, "position":I
    if-ltz v2, :cond_14

    if-ge v2, p1, :cond_14

    .line 2175
    .end local v2    # "position":I
    .end local v3    # "view":Landroid/view/View;
    :goto_13
    return v2

    .line 2168
    .restart local v2    # "position":I
    .restart local v3    # "view":Landroid/view/View;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2175
    .end local v2    # "position":I
    .end local v3    # "view":Landroid/view/View;
    :cond_17
    const/4 v2, 0x0

    goto :goto_13
.end method

.method private findLastReferenceChildPosition(I)I
    .registers 6
    .param p1, "itemCount"    # I

    .prologue
    .line 2184
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 2185
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2186
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 2187
    .local v1, "position":I
    if-ltz v1, :cond_15

    if-ge v1, p1, :cond_15

    .line 2191
    .end local v1    # "position":I
    .end local v2    # "view":Landroid/view/View;
    :goto_14
    return v1

    .line 2184
    .restart local v1    # "position":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2191
    .end local v1    # "position":I
    .end local v2    # "view":Landroid/view/View;
    :cond_18
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private fixEndGap(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V
    .registers 8
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "canOffsetChildren"    # Z

    .prologue
    const/high16 v3, -0x80000000

    .line 1362
    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v2

    .line 1363
    .local v2, "maxEndLine":I
    if-ne v2, v3, :cond_9

    .line 1377
    :cond_8
    :goto_8
    return-void

    .line 1366
    :cond_9
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v1, v3, v2

    .line 1368
    .local v1, "gap":I
    if-lez v1, :cond_8

    .line 1369
    neg-int v3, v1

    invoke-virtual {p0, v3, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v3

    neg-int v0, v3

    .line 1373
    .local v0, "fixOffset":I
    sub-int/2addr v1, v0

    .line 1374
    if-eqz p3, :cond_8

    if-lez v1, :cond_8

    .line 1375
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->offsetChildren(I)V

    goto :goto_8
.end method

.method private fixStartGap(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V
    .registers 9
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "canOffsetChildren"    # Z

    .prologue
    const v3, 0x7fffffff

    .line 1381
    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v2

    .line 1382
    .local v2, "minStartLine":I
    if-ne v2, v3, :cond_a

    .line 1396
    :cond_9
    :goto_9
    return-void

    .line 1385
    :cond_a
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v1, v2, v3

    .line 1387
    .local v1, "gap":I
    if-lez v1, :cond_9

    .line 1388
    invoke-virtual {p0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    .line 1392
    .local v0, "fixOffset":I
    sub-int/2addr v1, v0

    .line 1393
    if-eqz p3, :cond_9

    if-lez v1, :cond_9

    .line 1394
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->offsetChildren(I)V

    goto :goto_9
.end method

.method private getMaxEnd(I)I
    .registers 7
    .param p1, "def"    # I

    .prologue
    .line 1836
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .line 1837
    .local v1, "maxEnd":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_a
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1c

    .line 1838
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    .line 1839
    .local v2, "spanEnd":I
    if-le v2, v1, :cond_19

    .line 1840
    move v1, v2

    .line 1837
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1843
    .end local v2    # "spanEnd":I
    :cond_1c
    return v1
.end method

.method private getMaxStart(I)I
    .registers 7
    .param p1, "def"    # I

    .prologue
    .line 1794
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1795
    .local v1, "maxStart":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_a
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1c

    .line 1796
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    .line 1797
    .local v2, "spanStart":I
    if-le v2, v1, :cond_19

    .line 1798
    move v1, v2

    .line 1795
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1801
    .end local v2    # "spanStart":I
    :cond_1c
    return v1
.end method

.method private getMinEnd(I)I
    .registers 7
    .param p1, "def"    # I

    .prologue
    .line 1847
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .line 1848
    .local v1, "minEnd":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_a
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1c

    .line 1849
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    .line 1850
    .local v2, "spanEnd":I
    if-ge v2, v1, :cond_19

    .line 1851
    move v1, v2

    .line 1848
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1854
    .end local v2    # "spanEnd":I
    :cond_1c
    return v1
.end method

.method private getMinStart(I)I
    .registers 7
    .param p1, "def"    # I

    .prologue
    .line 1805
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1806
    .local v1, "minStart":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_a
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1c

    .line 1807
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    .line 1808
    .local v2, "spanStart":I
    if-ge v2, v1, :cond_19

    .line 1809
    move v1, v2

    .line 1806
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1812
    .end local v2    # "spanStart":I
    :cond_1c
    return v1
.end method

.method private getNextSpan(Lorg/telegram/messenger/support/widget/LayoutState;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    .registers 16
    .param p1, "layoutState"    # Lorg/telegram/messenger/support/widget/LayoutState;

    .prologue
    .line 1931
    iget v12, p1, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {p0, v12}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v10

    .line 1933
    .local v10, "preferLastSpan":Z
    if-eqz v10, :cond_2e

    .line 1934
    iget v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v11, v12, -0x1

    .line 1935
    .local v11, "startIndex":I
    const/4 v2, -0x1

    .line 1936
    .local v2, "endIndex":I
    const/4 v1, -0x1

    .line 1942
    .local v1, "diff":I
    :goto_e
    iget v12, p1, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_33

    .line 1943
    const/4 v6, 0x0

    .line 1944
    .local v6, "min":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    const v7, 0x7fffffff

    .line 1945
    .local v7, "minLine":I
    iget-object v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1946
    .local v0, "defaultLine":I
    move v3, v11

    .local v3, "i":I
    :goto_1e
    if-eq v3, v2, :cond_4e

    .line 1947
    iget-object v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v8, v12, v3

    .line 1948
    .local v8, "other":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v9

    .line 1949
    .local v9, "otherLine":I
    if-ge v9, v7, :cond_2c

    .line 1950
    move-object v6, v8

    .line 1951
    move v7, v9

    .line 1946
    :cond_2c
    add-int/2addr v3, v1

    goto :goto_1e

    .line 1938
    .end local v0    # "defaultLine":I
    .end local v1    # "diff":I
    .end local v2    # "endIndex":I
    .end local v3    # "i":I
    .end local v6    # "min":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    .end local v7    # "minLine":I
    .end local v8    # "other":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    .end local v9    # "otherLine":I
    .end local v11    # "startIndex":I
    :cond_2e
    const/4 v11, 0x0

    .line 1939
    .restart local v11    # "startIndex":I
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1940
    .restart local v2    # "endIndex":I
    const/4 v1, 0x1

    .restart local v1    # "diff":I
    goto :goto_e

    .line 1956
    :cond_33
    const/4 v4, 0x0

    .line 1957
    .local v4, "max":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    const/high16 v5, -0x80000000

    .line 1958
    .local v5, "maxLine":I
    iget-object v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1959
    .restart local v0    # "defaultLine":I
    move v3, v11

    .restart local v3    # "i":I
    :goto_3d
    if-eq v3, v2, :cond_4d

    .line 1960
    iget-object v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v8, v12, v3

    .line 1961
    .restart local v8    # "other":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v9

    .line 1962
    .restart local v9    # "otherLine":I
    if-le v9, v5, :cond_4b

    .line 1963
    move-object v4, v8

    .line 1964
    move v5, v9

    .line 1959
    :cond_4b
    add-int/2addr v3, v1

    goto :goto_3d

    .end local v8    # "other":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    .end local v9    # "otherLine":I
    :cond_4d
    move-object v6, v4

    .line 1967
    .end local v4    # "max":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    .end local v5    # "maxLine":I
    :cond_4e
    return-object v6
.end method

.method private handleUpdate(III)V
    .registers 10
    .param p1, "positionStart"    # I
    .param p2, "itemCountOrToPosition"    # I
    .param p3, "cmd"    # I

    .prologue
    const/4 v5, 0x1

    .line 1482
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_1d

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    .line 1486
    .local v3, "minPosition":I
    :goto_9
    const/16 v4, 0x8

    if-ne p3, v4, :cond_26

    .line 1487
    if-ge p1, p2, :cond_22

    .line 1488
    add-int/lit8 v0, p2, 0x1

    .line 1489
    .local v0, "affectedRangeEnd":I
    move v1, p1

    .line 1499
    .local v1, "affectedRangeStart":I
    :goto_12
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    .line 1500
    sparse-switch p3, :sswitch_data_54

    .line 1514
    :goto_1a
    if-gt v0, v3, :cond_41

    .line 1522
    :cond_1c
    :goto_1c
    return-void

    .line 1482
    .end local v0    # "affectedRangeEnd":I
    .end local v1    # "affectedRangeStart":I
    .end local v3    # "minPosition":I
    :cond_1d
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    goto :goto_9

    .line 1491
    .restart local v3    # "minPosition":I
    :cond_22
    add-int/lit8 v0, p1, 0x1

    .line 1492
    .restart local v0    # "affectedRangeEnd":I
    move v1, p2

    .restart local v1    # "affectedRangeStart":I
    goto :goto_12

    .line 1495
    .end local v0    # "affectedRangeEnd":I
    .end local v1    # "affectedRangeStart":I
    :cond_26
    move v1, p1

    .line 1496
    .restart local v1    # "affectedRangeStart":I
    add-int v0, p1, p2

    .restart local v0    # "affectedRangeEnd":I
    goto :goto_12

    .line 1502
    :sswitch_2a
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_1a

    .line 1505
    :sswitch_30
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    goto :goto_1a

    .line 1509
    :sswitch_36
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p1, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1510
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p2, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_1a

    .line 1518
    :cond_41
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_4f

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    .line 1519
    .local v2, "maxPosition":I
    :goto_49
    if-gt v1, v2, :cond_1c

    .line 1520
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_1c

    .line 1518
    .end local v2    # "maxPosition":I
    :cond_4f
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v2

    goto :goto_49

    .line 1500
    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_30
        0x8 -> :sswitch_36
    .end sparse-switch
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "alreadyMeasured"    # Z

    .prologue
    .line 1140
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1141
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1142
    .local v0, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iget v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-direct {p0, p2, v2, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 1144
    iget v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-direct {p0, p3, v2, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    .line 1146
    if-eqz p4, :cond_3b

    .line 1147
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .line 1149
    .local v1, "measure":Z
    :goto_35
    if-eqz v1, :cond_3a

    .line 1150
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1153
    :cond_3a
    return-void

    .line 1148
    .end local v1    # "measure":Z
    :cond_3b
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    goto :goto_35
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;Z)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    .param p3, "alreadyMeasured"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1113
    iget-boolean v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_32

    .line 1114
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v5, :cond_1e

    .line 1115
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 1116
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    iget v3, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 1115
    invoke-direct {p0, p1, v0, v1, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 1136
    :goto_1d
    return-void

    .line 1120
    :cond_1e
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    iget v2, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 1119
    invoke-direct {p0, p1, v0, v1, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_1d

    .line 1124
    :cond_32
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v5, :cond_54

    .line 1125
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 1126
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    iget v2, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 1127
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    iget v3, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 1125
    invoke-direct {p0, p1, v0, v1, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_1d

    .line 1131
    :cond_54
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v1

    iget v2, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, v1, v4, v2, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 1132
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v2

    iget v3, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v2, v4, v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 1130
    invoke-direct {p0, p1, v0, v1, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_1d
.end method

.method private onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V
    .registers 15
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "shouldCheckForGaps"    # Z

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 596
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 597
    .local v0, "anchorInfo":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v7, :cond_d

    iget v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-eq v7, v10, :cond_1a

    .line 598
    :cond_d
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    if-nez v7, :cond_1a

    .line 599
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 600
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 707
    :cond_19
    :goto_19
    return-void

    .line 605
    :cond_1a
    iget-boolean v7, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    if-eqz v7, :cond_26

    iget v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v7, v10, :cond_26

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_87

    :cond_26
    move v4, v3

    .line 607
    .local v4, "recalculateAnchor":Z
    :goto_27
    if-eqz v4, :cond_38

    .line 608
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 609
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_89

    .line 610
    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->applyPendingSavedState(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 615
    :goto_33
    invoke-virtual {p0, p2, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 616
    iput-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 618
    :cond_38
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v7, :cond_55

    iget v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v7, v10, :cond_55

    .line 619
    iget-boolean v7, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v7, v8, :cond_4e

    .line 620
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v7

    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v7, v8, :cond_55

    .line 621
    :cond_4e
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 622
    iput-boolean v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 626
    :cond_55
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_b3

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_65

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v7, v3, :cond_b3

    .line 628
    :cond_65
    iget-boolean v7, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v7, :cond_91

    .line 629
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6a
    iget v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v7, :cond_b3

    .line 631
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 632
    iget v7, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_84

    .line 633
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v7, v7, v2

    iget v8, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 629
    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .end local v2    # "i":I
    .end local v4    # "recalculateAnchor":Z
    :cond_87
    move v4, v6

    .line 605
    goto :goto_27

    .line 612
    .restart local v4    # "recalculateAnchor":Z
    :cond_89
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 613
    iget-boolean v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v7, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_33

    .line 637
    :cond_91
    if-nez v4, :cond_99

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-nez v7, :cond_148

    .line 638
    :cond_99
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9a
    iget v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v7, :cond_ac

    .line 639
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v7, v7, v2

    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iget v9, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    .line 638
    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    .line 642
    :cond_ac
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->saveSpanReferenceLines([Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)V

    .line 652
    .end local v2    # "i":I
    :cond_b3
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 653
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iput-boolean v6, v7, Lorg/telegram/messenger/support/widget/LayoutState;->mRecycle:Z

    .line 654
    iput-boolean v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 655
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 656
    iget v7, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v7, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateLayoutState(ILorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 657
    iget-boolean v7, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_160

    .line 659
    invoke-direct {p0, v10}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 660
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0, p1, v7, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    .line 662
    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 663
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v8, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v9, v9, Lorg/telegram/messenger/support/widget/LayoutState;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v7, Lorg/telegram/messenger/support/widget/LayoutState;->mCurrentPosition:I

    .line 664
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0, p1, v7, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    .line 675
    :goto_e9
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->repositionToWrapContentIfNecessary()V

    .line 677
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_fc

    .line 678
    iget-boolean v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_17d

    .line 679
    invoke-direct {p0, p1, p2, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fixEndGap(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V

    .line 680
    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fixStartGap(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V

    .line 686
    :cond_fc
    :goto_fc
    const/4 v1, 0x0

    .line 687
    .local v1, "hasGaps":Z
    if-eqz p3, :cond_127

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_127

    .line 688
    iget v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v7, :cond_185

    .line 689
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_185

    iget-boolean v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v7, :cond_119

    .line 690
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_185

    .line 691
    .local v3, "needToCheckForGaps":Z
    :cond_119
    :goto_119
    if-eqz v3, :cond_127

    .line 692
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 693
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v7

    if-eqz v7, :cond_127

    .line 694
    const/4 v1, 0x1

    .line 698
    .end local v3    # "needToCheckForGaps":Z
    :cond_127
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-eqz v7, :cond_132

    .line 699
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 701
    :cond_132
    iget-boolean v7, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 702
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v7

    iput-boolean v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 703
    if-eqz v1, :cond_19

    .line 704
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 705
    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V

    goto/16 :goto_19

    .line 644
    .end local v1    # "hasGaps":Z
    :cond_148
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_149
    iget v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v7, :cond_b3

    .line 645
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v7, v2

    .line 646
    .local v5, "span":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 647
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    aget v7, v7, v2

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 644
    add-int/lit8 v2, v2, 0x1

    goto :goto_149

    .line 667
    .end local v2    # "i":I
    .end local v5    # "span":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    :cond_160
    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 668
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0, p1, v7, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    .line 670
    invoke-direct {p0, v10}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 671
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v8, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v9, v9, Lorg/telegram/messenger/support/widget/LayoutState;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v7, Lorg/telegram/messenger/support/widget/LayoutState;->mCurrentPosition:I

    .line 672
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0, p1, v7, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    goto/16 :goto_e9

    .line 682
    :cond_17d
    invoke-direct {p0, p1, p2, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fixStartGap(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V

    .line 683
    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fixEndGap(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V

    goto/16 :goto_fc

    .restart local v1    # "hasGaps":Z
    :cond_185
    move v3, v6

    .line 690
    goto :goto_119
.end method

.method private preferLastSpan(I)Z
    .registers 6
    .param p1, "layoutDir"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1921
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_13

    .line 1922
    if-ne p1, v3, :cond_f

    move v0, v1

    :goto_a
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_11

    .line 1924
    :cond_e
    :goto_e
    return v1

    :cond_f
    move v0, v2

    .line 1922
    goto :goto_a

    :cond_11
    move v1, v2

    goto :goto_e

    .line 1924
    :cond_13
    if-ne p1, v3, :cond_23

    move v0, v1

    :goto_16
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne v0, v3, :cond_25

    move v0, v1

    :goto_1b
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eq v0, v3, :cond_e

    move v1, v2

    goto :goto_e

    :cond_23
    move v0, v2

    goto :goto_16

    :cond_25
    move v0, v2

    goto :goto_1b
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1764
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_10

    .line 1765
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    .line 1764
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1767
    :cond_10
    return-void
.end method

.method private recycle(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;)V
    .registers 7
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lorg/telegram/messenger/support/widget/LayoutState;

    .prologue
    const/4 v3, -0x1

    .line 1717
    iget-boolean v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mRecycle:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mInfinite:Z

    if-eqz v2, :cond_a

    .line 1753
    :cond_9
    :goto_9
    return-void

    .line 1720
    :cond_a
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    if-nez v2, :cond_1e

    .line 1722
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    if-ne v2, v3, :cond_18

    .line 1723
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    invoke-direct {p0, p1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->recycleFromEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V

    goto :goto_9

    .line 1725
    :cond_18
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    invoke-direct {p0, p1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->recycleFromStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V

    goto :goto_9

    .line 1730
    :cond_1e
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    if-ne v2, v3, :cond_3f

    .line 1732
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    iget v3, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 1734
    .local v1, "scrolled":I
    if-gez v1, :cond_34

    .line 1735
    iget v0, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    .line 1739
    .local v0, "line":I
    :goto_30
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->recycleFromEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V

    goto :goto_9

    .line 1737
    .end local v0    # "line":I
    :cond_34
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    iget v3, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v0, v2, v3

    .restart local v0    # "line":I
    goto :goto_30

    .line 1742
    .end local v0    # "line":I
    .end local v1    # "scrolled":I
    :cond_3f
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    invoke-direct {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v2

    iget v3, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    sub-int v1, v2, v3

    .line 1744
    .restart local v1    # "scrolled":I
    if-gez v1, :cond_51

    .line 1745
    iget v0, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    .line 1749
    .restart local v0    # "line":I
    :goto_4d
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->recycleFromStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V

    goto :goto_9

    .line 1747
    .end local v0    # "line":I
    :cond_51
    iget v2, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    iget v3, p2, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v0, v2, v3

    .restart local v0    # "line":I
    goto :goto_4d
.end method

.method private recycleFromEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V
    .registers 10
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "line"    # I

    .prologue
    const/4 v6, 0x1

    .line 1887
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    .line 1889
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_38

    .line 1890
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1891
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    if-lt v5, p2, :cond_38

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1892
    invoke-virtual {v5, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v5

    if-lt v5, p2, :cond_38

    .line 1893
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1895
    .local v4, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v5, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_4b

    .line 1896
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_28
    iget v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v5, :cond_3c

    .line 1897
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v3

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_39

    .line 1915
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "j":I
    .end local v4    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_38
    return-void

    .line 1896
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "j":I
    .restart local v4    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 1901
    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    iget v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v5, :cond_5a

    .line 1902
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1901
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 1905
    .end local v3    # "j":I
    :cond_4b
    iget-object v5, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v6, :cond_38

    .line 1908
    iget-object v5, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1910
    :cond_5a
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 1889
    add-int/lit8 v2, v2, -0x1

    goto :goto_7
.end method

.method private recycleFromStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V
    .registers 8
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "line"    # I

    .prologue
    const/4 v4, 0x1

    .line 1858
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_37

    .line 1859
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1860
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_37

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1861
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_37

    .line 1862
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1864
    .local v2, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_4a

    .line 1865
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_27
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v3, :cond_3b

    .line 1866
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_38

    .line 1884
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "j":I
    .end local v2    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_37
    return-void

    .line 1865
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "j":I
    .restart local v2    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 1870
    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v3, :cond_59

    .line 1871
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1870
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 1874
    .end local v1    # "j":I
    :cond_4a
    iget-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_37

    .line 1877
    iget-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1879
    :cond_59
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    goto :goto_1
.end method

.method private repositionToWrapContentIfNecessary()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    .line 719
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getMode()I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v11, v12, :cond_c

    .line 765
    :cond_b
    return-void

    .line 722
    :cond_c
    const/4 v7, 0x0

    .line 723
    .local v7, "maxSize":F
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    .line 724
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    if-ge v4, v2, :cond_3f

    .line 725
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 726
    .local v1, "child":Landroid/view/View;
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v11, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    int-to-float v10, v11

    .line 727
    .local v10, "size":F
    cmpg-float v11, v10, v7

    if-gez v11, :cond_26

    .line 724
    :goto_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 730
    :cond_26
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 731
    .local v5, "layoutParams":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 732
    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v11, v10

    iget v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v12, v12

    div-float v10, v11, v12

    .line 734
    :cond_3a
    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto :goto_23

    .line 736
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "layoutParams":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v10    # "size":F
    :cond_3f
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 737
    .local v0, "before":I
    iget v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v11, v11

    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 738
    .local v3, "desired":I
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getMode()I

    move-result v11

    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_5d

    .line 739
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 741
    :cond_5d
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 742
    iget v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    if-eq v11, v0, :cond_b

    .line 745
    const/4 v4, 0x0

    :goto_65
    if-ge v4, v2, :cond_b

    .line 746
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 747
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 748
    .local v6, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v11, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v11, :cond_78

    .line 745
    :goto_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 751
    :cond_78
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v11

    if-eqz v11, :cond_a2

    iget v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v11, v13, :cond_a2

    .line 752
    iget v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v11, v11, -0x1

    iget-object v12, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iget v12, v12, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v11, v12

    neg-int v11, v11

    iget v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int v8, v11, v12

    .line 753
    .local v8, "newOffset":I
    iget v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v11, v11, -0x1

    iget-object v12, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iget v12, v12, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v11, v12

    neg-int v11, v11

    mul-int v9, v11, v0

    .line 754
    .local v9, "prevOffset":I
    sub-int v11, v8, v9

    invoke-virtual {v1, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_75

    .line 756
    .end local v8    # "newOffset":I
    .end local v9    # "prevOffset":I
    :cond_a2
    iget-object v11, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iget v11, v11, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget v12, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int v8, v11, v12

    .line 757
    .restart local v8    # "newOffset":I
    iget-object v11, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iget v11, v11, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    mul-int v9, v11, v0

    .line 758
    .restart local v9    # "prevOffset":I
    iget v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v11, v13, :cond_ba

    .line 759
    sub-int v11, v8, v9

    invoke-virtual {v1, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_75

    .line 761
    :cond_ba
    sub-int v11, v8, v9

    invoke-virtual {v1, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_75
.end method

.method private resolveShouldLayoutReverse()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 545
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_b

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_10

    .line 546
    :cond_b
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 550
    :goto_f
    return-void

    .line 548
    :cond_10
    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_17

    :goto_14
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_f

    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private setLayoutStateDirection(I)V
    .registers 7
    .param p1, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1430
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iput p1, v2, Lorg/telegram/messenger/support/widget/LayoutState;->mLayoutDirection:I

    .line 1431
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v1, :cond_12

    move v2, v0

    :goto_d
    if-ne v4, v2, :cond_14

    :goto_f
    iput v0, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mItemDirection:I

    .line 1433
    return-void

    .line 1431
    :cond_12
    const/4 v2, 0x0

    goto :goto_d

    :cond_14
    move v0, v1

    goto :goto_f
.end method

.method private updateAllRemainingSpans(II)V
    .registers 5
    .param p1, "layoutDir"    # I
    .param p2, "targetLine"    # I

    .prologue
    .line 1770
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1c

    .line 1771
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1770
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1774
    :cond_14
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;II)V

    goto :goto_11

    .line 1776
    :cond_1c
    return-void
.end method

.method private updateAnchorFromChildren(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .registers 4
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p2, "anchorInfo"    # Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    .prologue
    .line 825
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v0, :cond_14

    .line 826
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result v0

    .line 827
    :goto_c
    iput v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 828
    const/high16 v0, -0x80000000

    iput v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 829
    const/4 v0, 0x1

    return v0

    .line 827
    :cond_14
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result v0

    goto :goto_c
.end method

.method private updateLayoutState(ILorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .registers 11
    .param p1, "anchorPosition"    # I
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1399
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iput v5, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    .line 1400
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iput p1, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mCurrentPosition:I

    .line 1401
    const/4 v2, 0x0

    .line 1402
    .local v2, "startExtra":I
    const/4 v1, 0x0

    .line 1403
    .local v1, "endExtra":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1404
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result v3

    .line 1405
    .local v3, "targetPos":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_26

    .line 1406
    iget-boolean v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ge v3, p1, :cond_5f

    move v6, v4

    :goto_1e
    if-ne v7, v6, :cond_61

    .line 1407
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    .line 1415
    .end local v3    # "targetPos":I
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v0

    .line 1416
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_68

    .line 1417
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    sub-int/2addr v7, v2

    iput v7, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    .line 1418
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    add-int/2addr v7, v1

    iput v7, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    .line 1423
    :goto_42
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iput-boolean v5, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mStopInFocusable:Z

    .line 1424
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iput-boolean v4, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mRecycle:Z

    .line 1425
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getMode()I

    move-result v7

    if-nez v7, :cond_79

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1426
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEnd()I

    move-result v7

    if-nez v7, :cond_79

    :goto_5c
    iput-boolean v4, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mInfinite:Z

    .line 1427
    return-void

    .end local v0    # "clipToPadding":Z
    .restart local v3    # "targetPos":I
    :cond_5f
    move v6, v5

    .line 1406
    goto :goto_1e

    .line 1409
    :cond_61
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    goto :goto_26

    .line 1420
    .end local v3    # "targetPos":I
    .restart local v0    # "clipToPadding":Z
    :cond_68
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEnd()I

    move-result v7

    add-int/2addr v7, v1

    iput v7, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    .line 1421
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    neg-int v7, v2

    iput v7, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    goto :goto_42

    :cond_79
    move v4, v5

    .line 1426
    goto :goto_5c
.end method

.method private updateRemainingSpans(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;II)V
    .registers 9
    .param p1, "span"    # Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    .param p2, "layoutDir"    # I
    .param p3, "targetLine"    # I

    .prologue
    const/4 v4, 0x0

    .line 1779
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v0

    .line 1780
    .local v0, "deletedSize":I
    const/4 v2, -0x1

    if-ne p2, v2, :cond_18

    .line 1781
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v1

    .line 1782
    .local v1, "line":I
    add-int v2, v1, v0

    if-gt v2, p3, :cond_17

    .line 1783
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v3, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 1791
    :cond_17
    :goto_17
    return-void

    .line 1786
    .end local v1    # "line":I
    :cond_18
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v1

    .line 1787
    .restart local v1    # "line":I
    sub-int v2, v1, v0

    if-lt v2, p3, :cond_17

    .line 1788
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v3, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_17
.end method

.method private updateSpecWithExtra(III)I
    .registers 7
    .param p1, "spec"    # I
    .param p2, "startInset"    # I
    .param p3, "endInset"    # I

    .prologue
    .line 1156
    if-nez p2, :cond_5

    if-nez p3, :cond_5

    .line 1164
    .end local p1    # "spec":I
    :cond_4
    :goto_4
    return p1

    .line 1159
    .restart local p1    # "spec":I
    :cond_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1160
    .local v0, "mode":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_11

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_4

    .line 1161
    :cond_11
    const/4 v1, 0x0

    .line 1162
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1161
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_4
.end method


# virtual methods
.method areAllEndsEqual()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/high16 v4, -0x80000000

    .line 1816
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    .line 1817
    .local v0, "end":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_c
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v3, :cond_1e

    .line 1818
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    if-eq v3, v0, :cond_1b

    .line 1822
    :goto_1a
    return v2

    .line 1817
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1822
    :cond_1e
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method areAllStartsEqual()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/high16 v4, -0x80000000

    .line 1826
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1827
    .local v1, "start":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_c
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1e

    .line 1828
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    if-eq v3, v1, :cond_1b

    .line 1832
    :goto_1a
    return v2

    .line 1827
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1832
    :cond_1e
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 513
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_7

    .line 514
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 516
    :cond_7
    return-void
.end method

.method public canScrollHorizontally()Z
    .registers 2

    .prologue
    .line 1978
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

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

    .line 1973
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method checkForGaps()Z
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 256
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_12

    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v8, :cond_12

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v8

    if-nez v8, :cond_14

    :cond_12
    move v6, v7

    .line 297
    :goto_13
    return v6

    .line 260
    :cond_14
    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_34

    .line 261
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v4

    .line 262
    .local v4, "minPos":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    .line 267
    .local v3, "maxPos":I
    :goto_20
    if-nez v4, :cond_3d

    .line 268
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, "gapView":Landroid/view/View;
    if-eqz v0, :cond_3d

    .line 270
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 271
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 272
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_13

    .line 264
    .end local v0    # "gapView":Landroid/view/View;
    .end local v3    # "maxPos":I
    .end local v4    # "minPos":I
    :cond_34
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v4

    .line 265
    .restart local v4    # "minPos":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    .restart local v3    # "maxPos":I
    goto :goto_20

    .line 276
    :cond_3d
    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v8, :cond_43

    move v6, v7

    .line 277
    goto :goto_13

    .line 279
    :cond_43
    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5d

    const/4 v2, -0x1

    .line 280
    .local v2, "invalidGapDir":I
    :goto_48
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v9, v3, 0x1

    .line 281
    invoke-virtual {v8, v4, v9, v2, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    .line 282
    .local v1, "invalidFsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-nez v1, :cond_5f

    .line 283
    iput-boolean v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 284
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move v6, v7

    .line 285
    goto :goto_13

    .end local v1    # "invalidFsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .end local v2    # "invalidGapDir":I
    :cond_5d
    move v2, v6

    .line 279
    goto :goto_48

    .line 287
    .restart local v1    # "invalidFsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .restart local v2    # "invalidGapDir":I
    :cond_5f
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v8, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/lit8 v9, v2, -0x1

    .line 288
    invoke-virtual {v7, v4, v8, v9, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 290
    .local v5, "validFsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-nez v5, :cond_79

    .line 291
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v8, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    .line 295
    :goto_72
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 296
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_13

    .line 293
    :cond_79
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v8, v5, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    goto :goto_72
.end method

.method public checkLayoutParams(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z
    .registers 3
    .param p1, "lp"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .prologue
    .line 2222
    instance-of v0, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    .line 2073
    iget v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v4, :cond_e

    move v0, p1

    .line 2074
    .local v0, "delta":I
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_d

    if-nez v0, :cond_10

    .line 2104
    :cond_d
    return-void

    .end local v0    # "delta":I
    :cond_e
    move v0, p2

    .line 2073
    goto :goto_5

    .line 2078
    .restart local v0    # "delta":I
    :cond_10
    invoke-virtual {p0, v0, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 2081
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    array-length v4, v4

    iget v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_24

    .line 2082
    :cond_1e
    iget v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    .line 2085
    :cond_24
    const/4 v3, 0x0

    .line 2086
    .local v3, "itemPrefetchCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    iget v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v4, :cond_61

    .line 2088
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v4, v4, Lorg/telegram/messenger/support/widget/LayoutState;->mItemDirection:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4e

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v4, v4, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v2

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v6, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mStartLine:I

    .line 2089
    invoke-virtual {v5, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    sub-int v1, v4, v5

    .line 2091
    .local v1, "distance":I
    :goto_43
    if-ltz v1, :cond_4b

    .line 2093
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    aput v1, v4, v3

    .line 2094
    add-int/lit8 v3, v3, 0x1

    .line 2086
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 2089
    .end local v1    # "distance":I
    :cond_4e
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v5, v5, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    .line 2090
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v5, v5, Lorg/telegram/messenger/support/widget/LayoutState;->mEndLine:I

    sub-int v1, v4, v5

    goto :goto_43

    .line 2097
    :cond_61
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Ljava/util/Arrays;->sort([III)V

    .line 2100
    const/4 v2, 0x0

    :goto_68
    if-ge v2, v3, :cond_d

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-virtual {v4, p3}, Lorg/telegram/messenger/support/widget/LayoutState;->hasMore(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2101
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v4, v4, Lorg/telegram/messenger/support/widget/LayoutState;->mCurrentPosition:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    aget v5, v5, v2

    invoke-interface {p4, v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 2102
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v5, v4, Lorg/telegram/messenger/support/widget/LayoutState;->mCurrentPosition:I

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v6, v6, Lorg/telegram/messenger/support/widget/LayoutState;->mItemDirection:I

    add-int/2addr v5, v6

    iput v5, v4, Lorg/telegram/messenger/support/widget/LayoutState;->mCurrentPosition:I

    .line 2100
    add-int/lit8 v2, v2, 0x1

    goto :goto_68
.end method

.method public computeHorizontalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1073
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1093
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 6
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 2003
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v0

    .line 2004
    .local v0, "direction":I
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 2005
    .local v1, "outVector":Landroid/graphics/PointF;
    if-nez v0, :cond_e

    .line 2006
    const/4 v1, 0x0

    .line 2015
    .end local v1    # "outVector":Landroid/graphics/PointF;
    :goto_d
    return-object v1

    .line 2008
    .restart local v1    # "outVector":Landroid/graphics/PointF;
    :cond_e
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_18

    .line 2009
    int-to-float v2, v0

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 2010
    iput v3, v1, Landroid/graphics/PointF;->y:F

    goto :goto_d

    .line 2012
    :cond_18
    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 2013
    int-to-float v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_d
.end method

.method public computeVerticalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1088
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1068
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1108
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .registers 6
    .param p1, "into"    # [I

    .prologue
    .line 975
    if-nez p1, :cond_18

    .line 976
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    .line 981
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_43

    .line 982
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 977
    .end local v0    # "i":I
    :cond_18
    array-length v1, p1

    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_6

    .line 978
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 984
    .restart local v0    # "i":I
    :cond_43
    return-object p1
.end method

.method findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;
    .registers 10
    .param p1, "fullyVisible"    # Z

    .prologue
    .line 1338
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 1339
    .local v1, "boundsStart":I
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1340
    .local v0, "boundsEnd":I
    const/4 v6, 0x0

    .line 1341
    .local v6, "partiallyVisible":Landroid/view/View;
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_13
    if-ltz v5, :cond_35

    .line 1342
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1343
    .local v2, "child":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 1344
    .local v4, "childStart":I
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 1345
    .local v3, "childEnd":I
    if-le v3, v1, :cond_29

    if-lt v4, v0, :cond_2c

    .line 1341
    :cond_29
    :goto_29
    add-int/lit8 v5, v5, -0x1

    goto :goto_13

    .line 1348
    :cond_2c
    if-le v3, v0, :cond_30

    if-nez p1, :cond_31

    .line 1357
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childEnd":I
    .end local v4    # "childStart":I
    :cond_30
    :goto_30
    return-object v2

    .line 1353
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "childEnd":I
    .restart local v4    # "childStart":I
    :cond_31
    if-nez v6, :cond_29

    .line 1354
    move-object v6, v2

    goto :goto_29

    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childEnd":I
    .end local v4    # "childStart":I
    :cond_35
    move-object v2, v6

    .line 1357
    goto :goto_30
.end method

.method findFirstVisibleItemClosestToStart(Z)Landroid/view/View;
    .registers 11
    .param p1, "fullyVisible"    # Z

    .prologue
    .line 1308
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 1309
    .local v1, "boundsStart":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1310
    .local v0, "boundsEnd":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    .line 1311
    .local v6, "limit":I
    const/4 v7, 0x0

    .line 1312
    .local v7, "partiallyVisible":Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_12
    if-ge v5, v6, :cond_34

    .line 1313
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1314
    .local v2, "child":Landroid/view/View;
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 1315
    .local v4, "childStart":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 1316
    .local v3, "childEnd":I
    if-le v3, v1, :cond_28

    if-lt v4, v0, :cond_2b

    .line 1312
    :cond_28
    :goto_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1319
    :cond_2b
    if-ge v4, v1, :cond_2f

    if-nez p1, :cond_30

    .line 1328
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childEnd":I
    .end local v4    # "childStart":I
    :cond_2f
    :goto_2f
    return-object v2

    .line 1324
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "childEnd":I
    .restart local v4    # "childStart":I
    :cond_30
    if-nez v7, :cond_28

    .line 1325
    move-object v7, v2

    goto :goto_28

    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childEnd":I
    .end local v4    # "childStart":I
    :cond_34
    move-object v2, v7

    .line 1328
    goto :goto_2f
.end method

.method findFirstVisibleItemPositionInt()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1278
    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    .line 1280
    .local v0, "first":Landroid/view/View;
    :goto_9
    if-nez v0, :cond_12

    const/4 v1, -0x1

    :goto_c
    return v1

    .line 1279
    .end local v0    # "first":Landroid/view/View;
    :cond_d
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_9

    .line 1280
    .restart local v0    # "first":Landroid/view/View;
    :cond_12
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_c
.end method

.method public findFirstVisibleItemPositions([I)[I
    .registers 6
    .param p1, "into"    # [I

    .prologue
    .line 943
    if-nez p1, :cond_18

    .line 944
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    .line 949
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_43

    .line 950
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findFirstVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 949
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 945
    .end local v0    # "i":I
    :cond_18
    array-length v1, p1

    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_6

    .line 946
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 952
    .restart local v0    # "i":I
    :cond_43
    return-object p1
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .registers 6
    .param p1, "into"    # [I

    .prologue
    .line 1039
    if-nez p1, :cond_18

    .line 1040
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    .line 1045
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_43

    .line 1046
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 1045
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1041
    .end local v0    # "i":I
    :cond_18
    array-length v1, p1

    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_6

    .line 1042
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1048
    .restart local v0    # "i":I
    :cond_43
    return-object p1
.end method

.method public findLastVisibleItemPositions([I)[I
    .registers 6
    .param p1, "into"    # [I

    .prologue
    .line 1007
    if-nez p1, :cond_18

    .line 1008
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    .line 1013
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_43

    .line 1014
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 1013
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1009
    .end local v0    # "i":I
    :cond_18
    array-length v1, p1

    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_6

    .line 1010
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1016
    .restart local v0    # "i":I
    :cond_43
    return-object p1
.end method

.method public generateDefaultLayoutParams()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 2197
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_c

    .line 2198
    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .line 2201
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_b
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2208
    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .registers 3
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2213
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 2214
    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2216
    :goto_b
    return-object v0

    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getColumnCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1295
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 1296
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1298
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_7
.end method

.method getFirstChildPosition()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2157
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 2158
    .local v0, "childCount":I
    if-nez v0, :cond_8

    :goto_7
    return v1

    :cond_8
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_7
.end method

.method public getGapStrategy()I
    .registers 2

    .prologue
    .line 484
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    return v0
.end method

.method getLastChildPosition()I
    .registers 3

    .prologue
    .line 2152
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 2153
    .local v0, "childCount":I
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_7
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 2226
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    return v0
.end method

.method public getReverseLayout()Z
    .registers 2

    .prologue
    .line 565
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getRowCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 4
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1286
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_7

    .line 1287
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1289
    :goto_6
    return v0

    :cond_7
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_6
.end method

.method public getSpanCount()I
    .registers 2

    .prologue
    .line 524
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    return v0
.end method

.method hasGapsToFix()Landroid/view/View;
    .registers 24

    .prologue
    .line 323
    const/16 v19, 0x0

    .line 324
    .local v19, "startChildIndex":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v20

    add-int/lit8 v6, v20, -0x1

    .line 325
    .local v6, "endChildIndex":I
    new-instance v10, Ljava/util/BitSet;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 326
    .local v10, "mSpansToCheck":Ljava/util/BitSet;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Ljava/util/BitSet;->set(IIZ)V

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v20

    if-eqz v20, :cond_7c

    const/16 v18, 0x1

    .line 331
    .local v18, "preferredSpanDir":I
    :goto_3e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7f

    .line 332
    move v7, v6

    .line 333
    .local v7, "firstChildIndex":I
    add-int/lit8 v4, v19, -0x1

    .line 338
    .local v4, "childLimit":I
    :goto_49
    if-ge v7, v4, :cond_84

    const/4 v14, 0x1

    .line 339
    .local v14, "nextChildDiff":I
    :goto_4c
    move v8, v7

    .local v8, "i":I
    :goto_4d
    if-eq v8, v4, :cond_12f

    .line 340
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 341
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 342
    .local v9, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-object v0, v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_95

    .line 343
    iget-object v0, v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->checkSpanForGap(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)Z

    move-result v20

    if-eqz v20, :cond_86

    .line 383
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_7b
    :goto_7b
    return-object v3

    .line 329
    .end local v4    # "childLimit":I
    .end local v7    # "firstChildIndex":I
    .end local v8    # "i":I
    .end local v14    # "nextChildDiff":I
    .end local v18    # "preferredSpanDir":I
    :cond_7c
    const/16 v18, -0x1

    goto :goto_3e

    .line 335
    .restart local v18    # "preferredSpanDir":I
    :cond_7f
    move/from16 v7, v19

    .line 336
    .restart local v7    # "firstChildIndex":I
    add-int/lit8 v4, v6, 0x1

    .restart local v4    # "childLimit":I
    goto :goto_49

    .line 338
    :cond_84
    const/4 v14, -0x1

    goto :goto_4c

    .line 346
    .restart local v3    # "child":Landroid/view/View;
    .restart local v8    # "i":I
    .restart local v9    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    .restart local v14    # "nextChildDiff":I
    :cond_86
    iget-object v0, v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->clear(I)V

    .line 348
    :cond_95
    iget-boolean v0, v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9d

    .line 339
    :cond_9b
    add-int/2addr v8, v14

    goto :goto_4d

    .line 352
    :cond_9d
    add-int v20, v8, v14

    move/from16 v0, v20

    if-eq v0, v4, :cond_9b

    .line 353
    add-int v20, v8, v14

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 354
    .local v13, "nextChild":Landroid/view/View;
    const/4 v5, 0x0

    .line 355
    .local v5, "compareSpans":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_105

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    .line 358
    .local v11, "myEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v15

    .line 359
    .local v15, "nextEnd":I
    if-lt v11, v15, :cond_7b

    .line 361
    if-ne v11, v15, :cond_d3

    .line 362
    const/4 v5, 0x1

    .line 373
    .end local v11    # "myEnd":I
    .end local v15    # "nextEnd":I
    :cond_d3
    :goto_d3
    if-eqz v5, :cond_9b

    .line 375
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 376
    .local v16, "nextLp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-object v0, v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    if-gez v20, :cond_127

    const/16 v20, 0x1

    move/from16 v21, v20

    :goto_f9
    if-gez v18, :cond_12c

    const/16 v20, 0x1

    :goto_fd
    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_9b

    goto/16 :goto_7b

    .line 365
    .end local v16    # "nextLp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    .line 366
    .local v12, "myStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    .line 367
    .local v17, "nextStart":I
    move/from16 v0, v17

    if-gt v12, v0, :cond_7b

    .line 369
    move/from16 v0, v17

    if-ne v12, v0, :cond_d3

    .line 370
    const/4 v5, 0x1

    goto :goto_d3

    .line 376
    .end local v12    # "myStart":I
    .end local v17    # "nextStart":I
    .restart local v16    # "nextLp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_127
    const/16 v20, 0x0

    move/from16 v21, v20

    goto :goto_f9

    :cond_12c
    const/16 v20, 0x0

    goto :goto_fd

    .line 383
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "compareSpans":Z
    .end local v9    # "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v13    # "nextChild":Landroid/view/View;
    .end local v16    # "nextLp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_12f
    const/4 v3, 0x0

    goto/16 :goto_7b
.end method

.method public invalidateSpanAssignments()V
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 535
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 536
    return-void
.end method

.method isLayoutRTL()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 553
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 4
    .param p1, "dx"    # I

    .prologue
    .line 1437
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 1438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_12

    .line 1439
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1438
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1441
    :cond_12
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 4
    .param p1, "dy"    # I

    .prologue
    .line 1445
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 1446
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_12

    .line 1447
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1446
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1449
    :cond_12
    return-void
.end method

.method public onDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .registers 5
    .param p1, "view"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .prologue
    .line 309
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_14

    .line 311
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 314
    :cond_14
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 315
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .registers 16
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p4, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2233
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    if-nez v8, :cond_8

    .line 2234
    const/4 v7, 0x0

    .line 2288
    :cond_7
    :goto_7
    return-object v7

    .line 2237
    :cond_8
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2238
    .local v0, "directChild":Landroid/view/View;
    if-nez v0, :cond_10

    .line 2239
    const/4 v7, 0x0

    goto :goto_7

    .line 2242
    :cond_10
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 2243
    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v2

    .line 2244
    .local v2, "layoutDir":I
    const/high16 v8, -0x80000000

    if-ne v2, v8, :cond_1d

    .line 2245
    const/4 v7, 0x0

    goto :goto_7

    .line 2247
    :cond_1d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 2248
    .local v4, "prevFocusLayoutParams":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v3, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 2249
    .local v3, "prevFocusFullSpan":Z
    iget-object v5, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    .line 2251
    .local v5, "prevFocusSpan":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
    const/4 v8, 0x1

    if-ne v2, v8, :cond_85

    .line 2252
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    .line 2256
    .local v6, "referenceChildPosition":I
    :goto_2e
    invoke-direct {p0, v6, p4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateLayoutState(ILorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 2257
    invoke-direct {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 2259
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v9, v9, Lorg/telegram/messenger/support/widget/LayoutState;->mItemDirection:I

    add-int/2addr v9, v6

    iput v9, v8, Lorg/telegram/messenger/support/widget/LayoutState;->mCurrentPosition:I

    .line 2260
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    const v9, 0x3eaaaaab

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    .line 2261
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lorg/telegram/messenger/support/widget/LayoutState;->mStopInFocusable:Z

    .line 2262
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lorg/telegram/messenger/support/widget/LayoutState;->mRecycle:Z

    .line 2263
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0, p3, v8, p4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    .line 2264
    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 2265
    if-nez v3, :cond_6a

    .line 2266
    invoke-virtual {v5, v6, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v7

    .line 2267
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_6a

    if-ne v7, v0, :cond_7

    .line 2273
    .end local v7    # "view":Landroid/view/View;
    :cond_6a
    invoke-direct {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 2274
    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_74
    if-ltz v1, :cond_9e

    .line 2275
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v8, v8, v1

    invoke-virtual {v8, v6, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v7

    .line 2276
    .restart local v7    # "view":Landroid/view/View;
    if-eqz v7, :cond_82

    if-ne v7, v0, :cond_7

    .line 2274
    :cond_82
    add-int/lit8 v1, v1, -0x1

    goto :goto_74

    .line 2254
    .end local v1    # "i":I
    .end local v6    # "referenceChildPosition":I
    .end local v7    # "view":Landroid/view/View;
    :cond_85
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    .restart local v6    # "referenceChildPosition":I
    goto :goto_2e

    .line 2281
    :cond_8a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8b
    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v8, :cond_9e

    .line 2282
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v8, v8, v1

    invoke-virtual {v8, v6, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v7

    .line 2283
    .restart local v7    # "view":Landroid/view/View;
    if-eqz v7, :cond_9b

    if-ne v7, v0, :cond_7

    .line 2281
    :cond_9b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 2288
    .end local v7    # "view":Landroid/view/View;
    :cond_9e
    const/4 v7, 0x0

    goto/16 :goto_7
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v6, 0x0

    .line 1251
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1252
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1a

    .line 1254
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v2

    .line 1255
    .local v2, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v3

    .line 1256
    .local v3, "start":Landroid/view/View;
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    .line 1257
    .local v0, "end":Landroid/view/View;
    if-eqz v3, :cond_1a

    if-nez v0, :cond_1b

    .line 1270
    .end local v0    # "end":Landroid/view/View;
    .end local v2    # "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .end local v3    # "start":Landroid/view/View;
    :cond_1a
    :goto_1a
    return-void

    .line 1260
    .restart local v0    # "end":Landroid/view/View;
    .restart local v2    # "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .restart local v3    # "start":Landroid/view/View;
    :cond_1b
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1261
    .local v4, "startPos":I
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1262
    .local v1, "endPos":I
    if-ge v4, v1, :cond_2c

    .line 1263
    invoke-virtual {v2, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1264
    invoke-virtual {v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_1a

    .line 1266
    :cond_2c
    invoke-virtual {v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1267
    invoke-virtual {v2, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_1a
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 13
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 1230
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1231
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v6, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    if-nez v0, :cond_c

    .line 1232
    invoke-super {p0, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1247
    :goto_b
    return-void

    :cond_c
    move-object v7, v6

    .line 1235
    check-cast v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1236
    .local v7, "sglp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_2c

    .line 1238
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    iget-boolean v1, v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_2a

    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_1d
    const/4 v2, -0x1

    const/4 v3, -0x1

    iget-boolean v4, v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v5, 0x0

    .line 1237
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_b

    .line 1238
    :cond_2a
    const/4 v1, 0x1

    goto :goto_1d

    .line 1242
    :cond_2c
    const/4 v0, -0x1

    const/4 v1, -0x1

    .line 1244
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    iget-boolean v3, v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_43

    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :goto_38
    iget-boolean v4, v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v5, 0x0

    .line 1242
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_b

    .line 1244
    :cond_43
    const/4 v3, 0x1

    goto :goto_38
.end method

.method public onItemsAdded(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 1458
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1459
    return-void
.end method

.method public onItemsChanged(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 1463
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 1464
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1465
    return-void
.end method

.method public onItemsMoved(Lorg/telegram/messenger/support/widget/RecyclerView;III)V
    .registers 6
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 1469
    const/16 v0, 0x8

    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1470
    return-void
.end method

.method public onItemsRemoved(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 1453
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1454
    return-void
.end method

.method public onItemsUpdated(Lorg/telegram/messenger/support/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 6
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 1475
    const/4 v0, 0x4

    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1476
    return-void
.end method

.method public onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .registers 4
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 590
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)V

    .line 591
    return-void
.end method

.method public onLayoutCompleted(Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .registers 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 711
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 712
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 713
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 714
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    .line 715
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 716
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1169
    instance-of v0, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_b

    .line 1170
    check-cast p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    .line 1171
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1175
    :cond_b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    .line 1179
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v3, :cond_10

    .line 1180
    new-instance v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;-><init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;)V

    .line 1224
    :cond_f
    :goto_f
    return-object v2

    .line 1182
    :cond_10
    new-instance v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1183
    .local v2, "state":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1184
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1185
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 1187
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v3, :cond_7d

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_7d

    .line 1188
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iput-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1189
    iget-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v3, v3

    iput v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1190
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 1195
    :goto_3c
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_97

    .line 1196
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v3, :cond_80

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    .line 1197
    :goto_4a
    iput v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1198
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1199
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1200
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    iput-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 1201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5d
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_f

    .line 1203
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v3, :cond_85

    .line 1204
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .line 1205
    .local v1, "line":I
    if-eq v1, v4, :cond_76

    .line 1206
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1214
    :cond_76
    :goto_76
    iget-object v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v1, v3, v0

    .line 1201
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 1192
    .end local v0    # "i":I
    .end local v1    # "line":I
    :cond_7d
    iput v6, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    goto :goto_3c

    .line 1197
    :cond_80
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    goto :goto_4a

    .line 1209
    .restart local v0    # "i":I
    :cond_85
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1210
    .restart local v1    # "line":I
    if-eq v1, v4, :cond_76

    .line 1211
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_76

    .line 1217
    .end local v0    # "i":I
    .end local v1    # "line":I
    :cond_97
    iput v5, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1218
    iput v5, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1219
    iput v6, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    goto/16 :goto_f
.end method

.method public onScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 302
    if-nez p1, :cond_5

    .line 303
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    .line 305
    :cond_5
    return-void
.end method

.method prepareLayoutStateForDelta(ILorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .registers 7
    .param p1, "delta"    # I
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 2109
    if-lez p1, :cond_24

    .line 2110
    const/4 v0, 0x1

    .line 2111
    .local v0, "layoutDir":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    .line 2116
    .local v1, "referenceChildPosition":I
    :goto_7
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/messenger/support/widget/LayoutState;->mRecycle:Z

    .line 2117
    invoke-direct {p0, v1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateLayoutState(ILorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 2118
    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 2119
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v3, v3, Lorg/telegram/messenger/support/widget/LayoutState;->mItemDirection:I

    add-int/2addr v3, v1

    iput v3, v2, Lorg/telegram/messenger/support/widget/LayoutState;->mCurrentPosition:I

    .line 2120
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    .line 2121
    return-void

    .line 2113
    .end local v0    # "layoutDir":I
    .end local v1    # "referenceChildPosition":I
    :cond_24
    const/4 v0, -0x1

    .line 2114
    .restart local v0    # "layoutDir":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    .restart local v1    # "referenceChildPosition":I
    goto :goto_7
.end method

.method scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 10
    .param p1, "dt"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v3, 0x0

    .line 2124
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v2, v3

    .line 2148
    :goto_a
    return v2

    .line 2128
    :cond_b
    invoke-virtual {p0, p1, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 2129
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0, p2, v4, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v1

    .line 2130
    .local v1, "consumed":I
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iget v0, v4, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    .line 2132
    .local v0, "available":I
    if-ge v0, v1, :cond_2f

    .line 2133
    move v2, p1

    .line 2143
    .local v2, "totalScroll":I
    :goto_1b
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    neg-int v5, v2

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->offsetChildren(I)V

    .line 2145
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 2146
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    iput v3, v4, Lorg/telegram/messenger/support/widget/LayoutState;->mAvailable:I

    .line 2147
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LayoutState;

    invoke-direct {p0, p2, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->recycle(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LayoutState;)V

    goto :goto_a

    .line 2134
    .end local v2    # "totalScroll":I
    :cond_2f
    if-gez p1, :cond_33

    .line 2135
    neg-int v2, v1

    .restart local v2    # "totalScroll":I
    goto :goto_1b

    .line 2137
    .end local v2    # "totalScroll":I
    :cond_33
    move v2, v1

    .restart local v2    # "totalScroll":I
    goto :goto_1b
.end method

.method public scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1984
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 2028
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v0, p1, :cond_f

    .line 2029
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2031
    :cond_f
    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 2032
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2033
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 2034
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 2050
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_9

    .line 2051
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2053
    :cond_9
    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 2054
    iput p2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2055
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 2056
    return-void
.end method

.method public scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1990
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setGapStrategy(I)V
    .registers 4
    .param p1, "gapStrategy"    # I

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 498
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-ne p1, v0, :cond_9

    .line 509
    :goto_8
    return-void

    .line 501
    :cond_9
    if-eqz p1, :cond_16

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    .line 503
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_16
    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 507
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 508
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_8

    .line 507
    :cond_24
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 12
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .prologue
    .line 572
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v7

    add-int v1, v6, v7

    .line 573
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    .line 574
    .local v4, "verticalPadding":I
    iget v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_39

    .line 575
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v2, v6, v4

    .line 576
    .local v2, "usedHeight":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v6

    invoke-static {p3, v2, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v0

    .line 577
    .local v0, "height":I
    iget v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v1

    .line 578
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v7

    .line 577
    invoke-static {p2, v6, v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v5

    .line 585
    .end local v2    # "usedHeight":I
    .local v5, "width":I
    :goto_35
    invoke-virtual {p0, v5, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->setMeasuredDimension(II)V

    .line 586
    return-void

    .line 580
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_39
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v3, v6, v1

    .line 581
    .local v3, "usedWidth":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v6

    invoke-static {p2, v3, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v5

    .line 582
    .restart local v5    # "width":I
    iget v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v4

    .line 583
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v7

    .line 582
    invoke-static {p3, v6, v7}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_35
.end method

.method public setOrientation(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    .line 433
    if-eqz p1, :cond_d

    const/4 v1, 0x1

    if-eq p1, v1, :cond_d

    .line 434
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid orientation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 437
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_16

    .line 445
    :goto_15
    return-void

    .line 440
    :cond_16
    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 441
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 442
    .local v0, "tmp":Lorg/telegram/messenger/support/widget/OrientationHelper;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 443
    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 444
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    goto :goto_15
.end method

.method public setReverseLayout(Z)V
    .registers 3
    .param p1, "reverseLayout"    # Z

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_12

    .line 463
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 465
    :cond_12
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 466
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 467
    return-void
.end method

.method public setSpanCount(I)V
    .registers 5
    .param p1, "spanCount"    # I

    .prologue
    .line 413
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 414
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq p1, v1, :cond_30

    .line 415
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    .line 416
    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 417
    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 418
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    .line 419
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2d

    .line 420
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpans:[Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    new-instance v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;-><init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;I)V

    aput-object v2, v1, v0

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 422
    :cond_2d
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 424
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method public smoothScrollToPosition(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)V
    .registers 6
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 2021
    new-instance v0, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 2022
    .local v0, "scroller":Lorg/telegram/messenger/support/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 2023
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->startSmoothScroll(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V

    .line 2024
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    .prologue
    .line 920
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method updateAnchorFromPendingData(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .registers 15
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p2, "anchorInfo"    # Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v11, -0x1

    const/high16 v10, -0x80000000

    const/4 v7, 0x1

    .line 834
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-nez v8, :cond_f

    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v8, v11, :cond_11

    :cond_f
    move v7, v6

    .line 908
    :goto_10
    return v7

    .line 838
    :cond_11
    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ltz v8, :cond_1d

    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-lt v8, v9, :cond_23

    .line 839
    :cond_1d
    iput v11, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 840
    iput v10, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    move v7, v6

    .line 841
    goto :goto_10

    .line 844
    :cond_23
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v8, :cond_33

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v8, v8, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v8, v11, :cond_33

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    iget v8, v8, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v8, v7, :cond_ec

    .line 847
    :cond_33
    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 848
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_cc

    .line 851
    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_62

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    .line 852
    :goto_43
    iput v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 853
    iget v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v6, v10, :cond_7c

    .line 854
    iget-boolean v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_67

    .line 855
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int v5, v6, v8

    .line 857
    .local v5, "target":I
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_10

    .line 852
    .end local v5    # "target":I
    :cond_62
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    goto :goto_43

    .line 859
    :cond_67
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int v5, v6, v8

    .line 861
    .restart local v5    # "target":I
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_10

    .line 867
    .end local v5    # "target":I
    :cond_7c
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 868
    .local v1, "childSize":I
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    if-le v1, v6, :cond_9f

    .line 870
    iget-boolean v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_98

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 871
    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 872
    :goto_94
    iput v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_10

    .line 871
    :cond_98
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 872
    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    goto :goto_94

    .line 876
    :cond_9f
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 877
    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int v4, v6, v8

    .line 878
    .local v4, "startGap":I
    if-gez v4, :cond_b4

    .line 879
    neg-int v6, v4

    iput v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_10

    .line 882
    :cond_b4
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 883
    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int v2, v6, v8

    .line 884
    .local v2, "endGap":I
    if-gez v2, :cond_c8

    .line 885
    iput v2, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_10

    .line 889
    :cond_c8
    iput v10, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto/16 :goto_10

    .line 893
    .end local v1    # "childSize":I
    .end local v2    # "endGap":I
    .end local v4    # "startGap":I
    :cond_cc
    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v8, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 894
    iget v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v8, v10, :cond_e6

    .line 895
    iget v8, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v8}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v3

    .line 897
    .local v3, "position":I
    if-ne v3, v7, :cond_dd

    move v6, v7

    :cond_dd
    iput-boolean v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 898
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 902
    .end local v3    # "position":I
    :goto_e2
    iput-boolean v7, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    goto/16 :goto_10

    .line 900
    :cond_e6
    iget v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p2, v6}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    goto :goto_e2

    .line 905
    .end local v0    # "child":Landroid/view/View;
    :cond_ec
    iput v10, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 906
    iget v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v6, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto/16 :goto_10
.end method

.method updateAnchorInfoForLayout(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .registers 4
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p2, "anchorInfo"    # Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;

    .prologue
    .line 807
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 818
    :cond_6
    :goto_6
    return-void

    .line 810
    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->updateAnchorFromChildren(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 816
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 817
    const/4 v0, 0x0

    iput v0, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_6
.end method

.method updateMeasureSpecs(I)V
    .registers 3
    .param p1, "totalSpace"    # I

    .prologue
    .line 912
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSpanCount:I

    div-int v0, p1, v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 914
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 915
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getMode()I

    move-result v0

    .line 914
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 916
    return-void
.end method

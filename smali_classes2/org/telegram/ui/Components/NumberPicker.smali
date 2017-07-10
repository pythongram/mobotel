.class public Lorg/telegram/ui/Components/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;,
        Lorg/telegram/ui/Components/NumberPicker$Formatter;,
        Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;,
        Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x0

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFlingScroller:Lorg/telegram/ui/Components/Scroller;

.field private mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private mInputText:Landroid/widget/TextView;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMinHeight:I

.field private mMinValue:I

.field private mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

.field private mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectionDivider:Landroid/graphics/Paint;

.field private mSelectionDividerHeight:I

.field private mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSolidColor:I

.field private mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 79
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 182
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->init()V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 79
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 187
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->init()V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 79
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 192
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->init()V

    .line 193
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/NumberPicker;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/NumberPicker;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 44
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/NumberPicker;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/NumberPicker;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 44
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/NumberPicker;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/NumberPicker;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method private changeValueByOne(Z)V
    .registers 8
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 762
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->moveToFinalScrollerPosition(Lorg/telegram/ui/Components/Scroller;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 764
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->moveToFinalScrollerPosition(Lorg/telegram/ui/Components/Scroller;)Z

    .line 766
    :cond_16
    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 767
    if-eqz p1, :cond_28

    .line 768
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Scroller;->startScroll(IIIII)V

    .line 772
    :goto_24
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    .line 773
    return-void

    .line 770
    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Scroller;->startScroll(IIIII)V

    goto :goto_24
.end method

.method private decrementSelectorIndices([I)V
    .registers 6
    .param p1, "selectorIndices"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 849
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    aget v1, p1, v3

    add-int/lit8 v0, v1, -0x1

    .line 851
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_16

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_16

    .line 852
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    .line 854
    :cond_16
    aput v0, p1, v2

    .line 855
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 856
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .registers 6
    .param p1, "selectorIndex"    # I

    .prologue
    .line 859
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 860
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 861
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 875
    :goto_a
    return-void

    .line 864
    :cond_b
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_13

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_19

    .line 865
    :cond_13
    const-string v2, ""

    .line 874
    :goto_15
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a

    .line 867
    :cond_19
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_26

    .line 868
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 869
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 870
    goto :goto_15

    .line 871
    .end local v1    # "displayedValueIndex":I
    :cond_26
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_15
.end method

.method private ensureScrollWheelAdjusted()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 950
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 951
    .local v4, "deltaY":I
    if-eqz v4, :cond_28

    .line 952
    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 953
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1b

    .line 954
    if-lez v4, :cond_29

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_1a
    add-int/2addr v4, v0

    .line 956
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Scroller;->startScroll(IIIII)V

    .line 957
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    .line 958
    const/4 v1, 0x1

    .line 960
    :cond_28
    return v1

    .line 954
    :cond_29
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    goto :goto_1a
.end method

.method private fling(I)V
    .registers 11
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 818
    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 820
    if-lez p1, :cond_17

    .line 821
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    .line 826
    :goto_13
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    .line 827
    return-void

    .line 823
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    goto :goto_13
.end method

.method private formatNumber(I)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 878
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p1}, Lorg/telegram/ui/Components/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .registers 6
    .param p0, "value"    # I

    .prologue
    .line 1059
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 920
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_9

    .line 922
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_2d

    move-result v1

    .line 945
    :goto_8
    return v1

    .line 927
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 929
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 930
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 931
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_8

    .line 927
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 940
    :cond_28
    :try_start_28
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2b} :catch_31

    move-result v1

    goto :goto_8

    .line 923
    .end local v0    # "i":I
    :catch_2d
    move-exception v1

    .line 945
    :goto_2e
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    goto :goto_8

    .line 941
    .restart local v0    # "i":I
    :catch_31
    move-exception v1

    goto :goto_2e
.end method

.method private getWrappedSelectorIndex(I)I
    .registers 6
    .param p1, "selectorIndex"    # I

    .prologue
    .line 830
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_14

    .line 831
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 835
    .end local p1    # "selectorIndex":I
    :cond_13
    :goto_13
    return p1

    .line 832
    .restart local p1    # "selectorIndex":I
    :cond_14
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_13

    .line 833
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_13
.end method

.method private incrementSelectorIndices([I)V
    .registers 6
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 839
    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 840
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    aget v1, p1, v1

    add-int/lit8 v0, v1, 0x1

    .line 841
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_19

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_19

    .line 842
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    .line 844
    :cond_19
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 845
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 846
    return-void
.end method

.method private init()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, -0x1

    .line 123
    iput v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mSolidColor:I

    .line 124
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    .line 125
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    const-string v7, "dialogButton"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    .line 128
    const/high16 v4, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividersDistance:I

    .line 130
    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    .line 132
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxHeight:I

    .line 133
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    if-eq v4, v8, :cond_62

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxHeight:I

    if-eq v4, v8, :cond_62

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    iget v7, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxHeight:I

    if-le v4, v7, :cond_62

    .line 134
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "minHeight > maxHeight"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_62
    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    .line 139
    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    .line 140
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    if-eq v4, v8, :cond_8b

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    if-eq v4, v8, :cond_8b

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    iget v7, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    if-le v4, v7, :cond_8b

    .line 141
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "minWidth > maxWidth"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    :cond_8b
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    if-ne v4, v8, :cond_149

    move v4, v5

    :goto_90
    iput-boolean v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mComputeMaxWidth:Z

    .line 146
    new-instance v4, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;-><init>(Lorg/telegram/ui/Components/NumberPicker;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    .line 148
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/NumberPicker;->setWillNotDraw(Z)V

    .line 150
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    .line 151
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 152
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 153
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const-string v7, "dialogTextBlack"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 155
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 156
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 159
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTouchSlop:I

    .line 160
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinimumFlingVelocity:I

    .line 161
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaximumFlingVelocity:I

    .line 162
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    .line 164
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 165
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 167
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 168
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 169
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 170
    .local v1, "colors":Landroid/content/res/ColorStateList;
    sget-object v4, Lorg/telegram/ui/Components/NumberPicker;->ENABLED_STATE_SET:[I

    invoke-virtual {v1, v4, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 171
    .local v0, "color":I
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iput-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 174
    new-instance v4, Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v5}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    .line 175
    new-instance v4, Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x40200000    # 2.5f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v4, v5, v6}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    .line 177
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 178
    return-void

    .end local v0    # "color":I
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    .end local v2    # "configuration":Landroid/view/ViewConfiguration;
    .end local v3    # "paint":Landroid/graphics/Paint;
    :cond_149
    move v4, v6

    .line 144
    goto/16 :goto_90
.end method

.method private initializeFadingEdges()V
    .registers 3

    .prologue
    .line 790
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 791
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->setFadingEdgeLength(I)V

    .line 792
    return-void
.end method

.method private initializeSelectorWheel()V
    .registers 8

    .prologue
    .line 776
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 777
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 778
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 779
    .local v4, "totalTextHeight":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 780
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 781
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    .line 782
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    iget v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    .line 783
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 784
    .local v0, "editTextTextPosition":I
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    .line 785
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 786
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 787
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .registers 6

    .prologue
    .line 728
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 729
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 730
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v0

    .line 731
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_27

    .line 732
    add-int/lit8 v4, v1, -0x1

    add-int v2, v0, v4

    .line 733
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_1d

    .line 734
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 736
    :cond_1d
    aput v2, v3, v1

    .line 737
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 739
    .end local v2    # "selectorIndex":I
    :cond_27
    return-void
.end method

.method private makeMeasureSpec(II)I
    .registers 8
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 678
    const/4 v2, -0x1

    if-ne p2, v2, :cond_6

    .line 689
    .end local p1    # "measureSpec":I
    :goto_5
    :sswitch_5
    return p1

    .line 681
    .restart local p1    # "measureSpec":I
    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 682
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 683
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_38

    .line 691
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 687
    :sswitch_2a
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_5

    .line 689
    :sswitch_33
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_5

    .line 683
    :sswitch_data_38
    .sparse-switch
        -0x80000000 -> :sswitch_2a
        0x0 -> :sswitch_33
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Lorg/telegram/ui/Components/Scroller;)Z
    .registers 9
    .param p1, "scroller"    # Lorg/telegram/ui/Components/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 227
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    .line 228
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 229
    .local v0, "amountToScroll":I
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 230
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 231
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_34

    .line 232
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_2b

    .line 233
    if-lez v2, :cond_30

    .line 234
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 239
    :cond_2b
    :goto_2b
    add-int/2addr v0, v2

    .line 240
    invoke-virtual {p0, v4, v0}, Lorg/telegram/ui/Components/NumberPicker;->scrollBy(II)V

    .line 243
    :goto_2f
    return v3

    .line 236
    :cond_30
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_2b

    :cond_34
    move v3, v4

    .line 243
    goto :goto_2f
.end method

.method private notifyChange(II)V
    .registers 5
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 891
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_b

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;->onValueChange(Lorg/telegram/ui/Components/NumberPicker;II)V

    .line 894
    :cond_b
    return-void
.end method

.method private onScrollStateChange(I)V
    .registers 3
    .param p1, "scrollState"    # I

    .prologue
    .line 808
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_5

    .line 815
    :cond_4
    :goto_4
    return-void

    .line 811
    :cond_5
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_4

    .line 813
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;->onScrollStateChange(Lorg/telegram/ui/Components/NumberPicker;I)V

    goto :goto_4
.end method

.method private onScrollerFinished(Lorg/telegram/ui/Components/Scroller;)V
    .registers 4
    .param p1, "scroller"    # Lorg/telegram/ui/Components/Scroller;

    .prologue
    .line 795
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    if-ne p1, v0, :cond_12

    .line 796
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_d

    .line 797
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 799
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    .line 805
    :cond_11
    :goto_11
    return-void

    .line 801
    :cond_12
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    .line 802
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    goto :goto_11
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .registers 6
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 897
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_16

    .line 898
    new-instance v0, Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lorg/telegram/ui/Components/NumberPicker;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 902
    :goto_b
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$000(Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lorg/telegram/ui/Components/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 904
    return-void

    .line 900
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private removeAllCallbacks()V
    .registers 2

    .prologue
    .line 913
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 916
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->cancel()V

    .line 917
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .registers 2

    .prologue
    .line 907
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 908
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 910
    :cond_9
    return-void
.end method

.method public static resolveSizeAndState(III)I
    .registers 7
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I

    .prologue
    .line 706
    move v0, p0

    .line 707
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 708
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 709
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_1e

    .line 724
    :goto_c
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 711
    :sswitch_11
    move v0, p0

    .line 712
    goto :goto_c

    .line 714
    :sswitch_13
    if-ge v2, p0, :cond_1a

    .line 715
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_c

    .line 717
    :cond_1a
    move v0, p0

    .line 719
    goto :goto_c

    .line 721
    :sswitch_1c
    move v0, v2

    goto :goto_c

    .line 709
    :sswitch_data_1e
    .sparse-switch
        -0x80000000 -> :sswitch_13
        0x0 -> :sswitch_11
        0x40000000 -> :sswitch_1c
    .end sparse-switch
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .registers 6
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 697
    const/4 v1, -0x1

    if-eq p1, v1, :cond_c

    .line 698
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 699
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lorg/telegram/ui/Components/NumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 701
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_c
    return p2
.end method

.method private setValueInternal(IZ)V
    .registers 5
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 742
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_5

    .line 759
    :goto_4
    return-void

    .line 745
    :cond_5
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_20

    .line 746
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 751
    :goto_d
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    .line 752
    .local v0, "previous":I
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    .line 753
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 754
    if-eqz p2, :cond_19

    .line 755
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/NumberPicker;->notifyChange(II)V

    .line 757
    :cond_19
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 758
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_4

    .line 748
    .end local v0    # "previous":I
    :cond_20
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 749
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_d
.end method

.method private tryComputeMaxWidth()V
    .registers 13

    .prologue
    .line 513
    iget-boolean v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_5

    .line 549
    :cond_4
    :goto_4
    return-void

    .line 516
    :cond_5
    const/4 v5, 0x0

    .line 517
    .local v5, "maxTextWidth":I
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_4b

    .line 518
    const/4 v4, 0x0

    .line 519
    .local v4, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const/16 v8, 0x9

    if-gt v2, v8, :cond_22

    .line 520
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/ui/Components/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 521
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v4

    if-lez v8, :cond_1f

    .line 522
    move v4, v1

    .line 519
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 525
    .end local v1    # "digitWidth":F
    :cond_22
    const/4 v6, 0x0

    .line 526
    .local v6, "numberOfDigits":I
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    .line 527
    .local v0, "current":I
    :goto_25
    if-lez v0, :cond_2c

    .line 528
    add-int/lit8 v6, v6, 0x1

    .line 529
    div-int/lit8 v0, v0, 0xa

    goto :goto_25

    .line 531
    :cond_2c
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 540
    .end local v0    # "current":I
    .end local v2    # "i":I
    .end local v4    # "maxDigitWidth":F
    .end local v6    # "numberOfDigits":I
    :cond_2f
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    .line 541
    iget v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    if-eq v8, v5, :cond_4

    .line 542
    iget v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    if-le v5, v8, :cond_62

    .line 543
    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    .line 547
    :goto_47
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_4

    .line 533
    :cond_4b
    iget-object v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_4f
    if-ge v8, v10, :cond_2f

    aget-object v3, v9, v8

    .line 534
    .local v3, "mDisplayedValue":Ljava/lang/String;
    iget-object v11, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 535
    .local v7, "textWidth":F
    int-to-float v11, v5

    cmpl-float v11, v7, v11

    if-lez v11, :cond_5f

    .line 536
    float-to-int v5, v7

    .line 533
    :cond_5f
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 545
    .end local v3    # "mDisplayedValue":Ljava/lang/String;
    .end local v7    # "textWidth":F
    :cond_62
    iget v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    goto :goto_47
.end method

.method private updateInputTextView()Z
    .registers 5

    .prologue
    .line 882
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_27

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "text":Ljava/lang/String;
    :goto_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 884
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    const/4 v1, 0x1

    .line 887
    :goto_26
    return v1

    .line 882
    .end local v0    # "text":Ljava/lang/String;
    :cond_27
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_a

    .line 887
    .restart local v0    # "text":Ljava/lang/String;
    :cond_31
    const/4 v1, 0x0

    goto :goto_26
.end method


# virtual methods
.method public computeScroll()V
    .registers 5

    .prologue
    .line 414
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    .line 415
    .local v1, "scroller":Lorg/telegram/ui/Components/Scroller;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 416
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    .line 417
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 433
    :goto_10
    return-void

    .line 421
    :cond_11
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->computeScrollOffset()Z

    .line 422
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->getCurrY()I

    move-result v0

    .line 423
    .local v0, "currentScrollerY":I
    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_22

    .line 424
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 426
    :cond_22
    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->scrollBy(II)V

    .line 427
    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 428
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 429
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->onScrollerFinished(Lorg/telegram/ui/Components/Scroller;)V

    goto :goto_10

    .line 431
    :cond_36
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_10
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 483
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 2

    .prologue
    .line 473
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 3

    .prologue
    .line 478
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 368
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 369
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_58

    .line 397
    :cond_a
    :goto_a
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_e
    :goto_e
    return v2

    .line 372
    :sswitch_f
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    goto :goto_a

    .line 376
    :sswitch_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_6a

    goto :goto_a

    .line 378
    :pswitch_1b
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_21

    if-ne v0, v4, :cond_42

    .line 379
    :cond_21
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 380
    :goto_2b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->requestFocus()Z

    .line 381
    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 382
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    .line 383
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 384
    if-ne v0, v4, :cond_4d

    move v1, v2

    :goto_3e
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    goto :goto_e

    .line 379
    :cond_42
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_a

    goto :goto_2b

    .line 384
    :cond_4d
    const/4 v1, 0x0

    goto :goto_3e

    .line 390
    :pswitch_4f
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_a

    .line 391
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    goto :goto_e

    .line 369
    nop

    :sswitch_data_58
    .sparse-switch
        0x13 -> :sswitch_13
        0x14 -> :sswitch_13
        0x17 -> :sswitch_f
        0x42 -> :sswitch_f
    .end sparse-switch

    .line 376
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_4f
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 357
    .local v0, "action":I
    packed-switch v0, :pswitch_data_10

    .line 363
    :goto_7
    :pswitch_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 360
    :pswitch_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    goto :goto_7

    .line 357
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 403
    .local v0, "action":I
    packed-switch v0, :pswitch_data_10

    .line 409
    :goto_7
    :pswitch_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 406
    :pswitch_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    goto :goto_7

    .line 403
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 638
    const v0, 0x3f666666

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .registers 2

    .prologue
    .line 595
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .registers 2

    .prologue
    .line 571
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 488
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 633
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 567
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .registers 2

    .prologue
    .line 552
    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 643
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 644
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    .line 645
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 649
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/NumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v0, v3

    move/from16 v17, v0

    .line 650
    .local v17, "x":F
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v0, v3

    move/from16 v18, v0

    .line 653
    .local v18, "y":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 654
    .local v14, "selectorIndices":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1a
    array-length v3, v14

    if-ge v11, v3, :cond_4d

    .line 655
    aget v13, v14, v11

    .line 656
    .local v13, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 662
    .local v12, "scrollSelectorValue":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v11, v3, :cond_36

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_43

    .line 663
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 665
    :cond_43
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    int-to-float v3, v3

    add-float v18, v18, v3

    .line 654
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    .line 668
    .end local v12    # "scrollSelectorValue":Ljava/lang/String;
    .end local v13    # "selectorIndex":I
    :cond_4d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    move/from16 v16, v0

    .line 669
    .local v16, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    add-int v10, v16, v3

    .line 670
    .local v10, "bottomOfTopDivider":I
    const/4 v4, 0x0

    move/from16 v0, v16

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v3

    int-to-float v6, v3

    int-to-float v7, v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 672
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 673
    .local v9, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    sub-int v15, v9, v3

    .line 674
    .local v15, "topOfBottomDivider":I
    const/4 v4, 0x0

    int-to-float v5, v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v3

    int-to-float v6, v3

    int-to-float v7, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 675
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 248
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    .line 284
    :goto_8
    return v1

    .line 251
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 252
    .local v0, "action":I
    packed-switch v0, :pswitch_data_a6

    goto :goto_8

    .line 254
    :pswitch_11
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    .line 255
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iput v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownOrMoveEventY:F

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventTime:J

    .line 258
    iput-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mIngonreMoveEvents:Z

    .line 259
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5b

    .line 260
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-nez v3, :cond_3d

    .line 261
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 268
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 269
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6e

    .line 270
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    .line 271
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    .line 272
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    :cond_59
    :goto_59
    move v1, v2

    .line 281
    goto :goto_8

    .line 263
    :cond_5b
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3d

    .line 264
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-nez v3, :cond_3d

    .line 265
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_3d

    .line 273
    :cond_6e
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_81

    .line 274
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    .line 275
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    goto :goto_59

    .line 276
    :cond_81
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_93

    .line 277
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v1, v4, v5}, Lorg/telegram/ui/Components/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_59

    .line 278
    :cond_93
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_59

    .line 279
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {p0, v2, v4, v5}, Lorg/telegram/ui/Components/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_59

    .line 252
    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 198
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 200
    .local v6, "msrdHght":I
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 201
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 202
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 203
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 204
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 205
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 206
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 208
    if-eqz p1, :cond_47

    .line 209
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheel()V

    .line 210
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeFadingEdges()V

    .line 211
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    .line 212
    iget v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 214
    :cond_47
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 218
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lorg/telegram/ui/Components/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 219
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lorg/telegram/ui/Components/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 220
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 221
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lorg/telegram/ui/Components/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 222
    .local v3, "widthSize":I
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lorg/telegram/ui/Components/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 223
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Lorg/telegram/ui/Components/NumberPicker;->setMeasuredDimension(II)V

    .line 224
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_8

    .line 290
    const/4 v10, 0x0

    .line 351
    :goto_7
    return v10

    .line 292
    :cond_8
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_12

    .line 293
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 295
    :cond_12
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 297
    .local v0, "action":I
    packed-switch v0, :pswitch_data_cc

    .line 351
    :cond_1e
    :goto_1e
    const/4 v10, 0x1

    goto :goto_7

    .line 299
    :pswitch_20
    iget-boolean v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mIngonreMoveEvents:Z

    if-nez v10, :cond_1e

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 303
    .local v1, "currentMoveY":F
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_44

    .line 304
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 305
    .local v2, "deltaDownY":I
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mTouchSlop:I

    if-le v2, v10, :cond_41

    .line 306
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    .line 307
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    .line 314
    .end local v2    # "deltaDownY":I
    :cond_41
    :goto_41
    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_1e

    .line 310
    :cond_44
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 311
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Lorg/telegram/ui/Components/NumberPicker;->scrollBy(II)V

    .line 312
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_41

    .line 318
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_51
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 319
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->cancel()V

    .line 320
    iget-object v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 321
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 322
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 323
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_80

    .line 324
    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/NumberPicker;->fling(I)V

    .line 325
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    .line 346
    :goto_77
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 347
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1e

    .line 327
    :cond_80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 328
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 329
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 330
    .local v4, "deltaTime":J
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mTouchSlop:I

    if-gt v3, v10, :cond_c7

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_c7

    .line 331
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v6, v10

    add-int/lit8 v8, v10, -0x1

    .line 332
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_ba

    .line 333
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    .line 334
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 344
    .end local v8    # "selectorIndexOffset":I
    :cond_b5
    :goto_b5
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    goto :goto_77

    .line 336
    .restart local v8    # "selectorIndexOffset":I
    :cond_ba
    if-gez v8, :cond_b5

    .line 337
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    .line 338
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_b5

    .line 342
    .end local v8    # "selectorIndexOffset":I
    :cond_c7
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_b5

    .line 297
    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_51
        :pswitch_20
    .end packed-switch
.end method

.method public scrollBy(II)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 444
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_14

    if-lez p2, :cond_14

    aget v1, v0, v3

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_14

    .line 445
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 469
    :cond_13
    :goto_13
    return-void

    .line 448
    :cond_14
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_25

    if-gez p2, :cond_25

    aget v1, v0, v3

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_25

    .line 449
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_13

    .line 452
    :cond_25
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 453
    :cond_2a
    :goto_2a
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_51

    .line 454
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 455
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->decrementSelectorIndices([I)V

    .line 456
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValueInternal(IZ)V

    .line 457
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2a

    aget v1, v0, v3

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2a

    .line 458
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2a

    .line 461
    :cond_51
    :goto_51
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_13

    .line 462
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 463
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->incrementSelectorIndices([I)V

    .line 464
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValueInternal(IZ)V

    .line 465
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_51

    aget v1, v0, v3

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_51

    .line 466
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_51
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .registers 3
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_5

    .line 629
    :goto_4
    return-void

    .line 625
    :cond_5
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 626
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 627
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 628
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_4
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 439
    return-void
.end method

.method public setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V
    .registers 3
    .param p1, "formatter"    # Lorg/telegram/ui/Components/NumberPicker$Formatter;

    .prologue
    .line 500
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    if-ne p1, v0, :cond_5

    .line 506
    :goto_4
    return-void

    .line 503
    :cond_5
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    .line 504
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 505
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    goto :goto_4
.end method

.method public setMaxValue(I)V
    .registers 5
    .param p1, "maxValue"    # I

    .prologue
    .line 599
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_5

    .line 615
    :goto_4
    return-void

    .line 602
    :cond_5
    if-gez p1, :cond_f

    .line 603
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 605
    :cond_f
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    .line 606
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_1b

    .line 607
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    .line 609
    :cond_1b
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_36

    const/4 v0, 0x1

    .line 610
    .local v0, "wrapSelectorWheel":Z
    :goto_26
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 611
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 612
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 613
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->tryComputeMaxWidth()V

    .line 614
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_4

    .line 609
    .end local v0    # "wrapSelectorWheel":Z
    :cond_36
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public setMinValue(I)V
    .registers 5
    .param p1, "minValue"    # I

    .prologue
    .line 575
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_5

    .line 592
    :goto_4
    return-void

    .line 582
    :cond_5
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    .line 583
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    if-le v1, v2, :cond_11

    .line 584
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    .line 586
    :cond_11
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_2c

    const/4 v0, 0x1

    .line 587
    .local v0, "wrapSelectorWheel":Z
    :goto_1c
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 588
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 589
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 590
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->tryComputeMaxWidth()V

    .line 591
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_4

    .line 586
    .end local v0    # "wrapSelectorWheel":Z
    :cond_2c
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public setOnLongPressUpdateInterval(J)V
    .registers 4
    .param p1, "intervalMillis"    # J

    .prologue
    .line 563
    iput-wide p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    .line 564
    return-void
.end method

.method public setOnScrollListener(Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;)V
    .registers 2
    .param p1, "onScrollListener"    # Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    .prologue
    .line 496
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    .line 497
    return-void
.end method

.method public setOnValueChangedListener(Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;)V
    .registers 2
    .param p1, "onValueChangedListener"    # Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

    .prologue
    .line 492
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

    .line 493
    return-void
.end method

.method public setValue(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setValueInternal(IZ)V

    .line 510
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .registers 5
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 556
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_16

    const/4 v0, 0x1

    .line 557
    .local v0, "wrappingAllowed":Z
    :goto_b
    if-eqz p1, :cond_f

    if-eqz v0, :cond_15

    :cond_f
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_15

    .line 558
    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    .line 560
    :cond_15
    return-void

    .line 556
    .end local v0    # "wrappingAllowed":Z
    :cond_16
    const/4 v0, 0x0

    goto :goto_b
.end method

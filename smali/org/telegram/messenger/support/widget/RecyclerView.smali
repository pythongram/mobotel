.class public Lorg/telegram/messenger/support/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v4/view/ScrollingView;
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$State;,
        Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;,
        Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;,
        Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;,
        Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;,
        Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;,
        Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$SimpleOnItemTouchListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;,
        Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;,
        Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;,
        Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;,
        Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;,
        Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final ALLOW_THREAD_GAP_WORK:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field static final DEBUG:Z = false

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final HORIZONTAL:I = 0x0

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final VERTICAL:I = 0x1

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private glowColor:I

.field mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

.field mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

.field mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field private mDispatchScrollCounter:I

.field private mEatRequestLayout:I

.field private mEatenAccessibilityChangeFlags:I

.field mFirstLayoutComplete:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mGapWorker:Lorg/telegram/messenger/support/widget/GapWorker;

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field mIsAttached:Z

.field mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

.field mRecyclerListener:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field final mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

.field private topGlowOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    new-array v0, v2, [I

    const v3, 0x1010436

    aput v3, v0, v1

    sput-object v0, Lorg/telegram/messenger/support/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 163
    new-array v0, v2, [I

    const v3, 0x10100eb

    aput v3, v0, v1

    sput-object v0, Lorg/telegram/messenger/support/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_28

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_28

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_73

    :cond_28
    move v0, v2

    :goto_29
    sput-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_75

    move v0, v2

    :goto_32
    sput-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_77

    move v0, v2

    :goto_3b
    sput-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_79

    move v0, v2

    :goto_44
    sput-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v4, :cond_7b

    move v0, v2

    :goto_4b
    sput-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v4, :cond_7d

    move v0, v2

    :goto_52
    sput-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    .line 292
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/support/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 511
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$3;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$3;-><init>()V

    sput-object v0, Lorg/telegram/messenger/support/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_73
    move v0, v1

    .line 172
    goto :goto_29

    :cond_75
    move v0, v1

    .line 179
    goto :goto_32

    :cond_77
    move v0, v1

    .line 181
    goto :goto_3b

    :cond_79
    move v0, v1

    .line 187
    goto :goto_44

    :cond_7b
    move v0, v1

    .line 193
    goto :goto_4b

    :cond_7d
    move v0, v1

    .line 203
    goto :goto_52
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 558
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 559
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 563
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 566
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 295
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mObserver:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

    .line 297
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .line 314
    new-instance v3, Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-direct {v3}, Lorg/telegram/messenger/support/widget/ViewInfoStore;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    .line 328
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$1;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 348
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 349
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 350
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 354
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 355
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 363
    iput v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    .line 388
    iput-boolean v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 398
    iput v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 407
    iput v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 411
    new-instance v3, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    invoke-direct {v3}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    .line 438
    iput v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    .line 439
    const/4 v3, -0x1

    iput v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    .line 450
    const/4 v3, 0x1

    iput v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollFactor:F

    .line 451
    iput-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 453
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    .line 456
    sget-boolean v3, Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_11a

    new-instance v3, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v3}, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    :goto_6e
    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 459
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-direct {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .line 465
    iput-boolean v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 466
    iput-boolean v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsChanged:Z

    .line 467
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 469
    iput-boolean v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 475
    new-array v3, v6, [I

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 478
    new-array v3, v6, [I

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    .line 479
    new-array v3, v6, [I

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollConsumed:[I

    .line 480
    new-array v3, v6, [I

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    .line 482
    iput v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->topGlowOffset:I

    .line 483
    iput v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->glowColor:I

    .line 498
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 501
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$2;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$2;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 522
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$4;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$4;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoProcessCallback:Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;

    .line 567
    if-eqz p2, :cond_11d

    .line 568
    sget-object v3, Lorg/telegram/messenger/support/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 569
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    .line 570
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 574
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_be
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollContainer(Z)V

    .line 575
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 577
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 578
    .local v2, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    .line 579
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinFlingVelocity:I

    .line 580
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 581
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getOverScrollMode()I

    move-result v3

    if-ne v3, v6, :cond_120

    move v3, v4

    :goto_e1
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 583
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->setListener(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 584
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->initAdapterManager()V

    .line 585
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->initChildrenHelper()V

    .line 587
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_fa

    .line 589
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 592
    :cond_fa
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    .line 593
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 594
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->setAccessibilityDelegateCompat(Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;)V

    .line 597
    const/4 v1, 0x1

    .line 600
    .local v1, "nestedScrollingEnabled":Z
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 603
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 604
    return-void

    .line 456
    .end local v1    # "nestedScrollingEnabled":Z
    .end local v2    # "vc":Landroid/view/ViewConfiguration;
    :cond_11a
    const/4 v3, 0x0

    goto/16 :goto_6e

    .line 572
    :cond_11d
    iput-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    goto :goto_be

    .restart local v2    # "vc":Landroid/view/ViewConfiguration;
    :cond_120
    move v3, v5

    .line 581
    goto :goto_e1
.end method

.method static synthetic access$000(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Z
    .registers 1

    .prologue
    .line 154
    sget-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    return v0
.end method

.method private addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 8
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x1

    .line 1248
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1249
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_24

    move v0, v2

    .line 1250
    .local v0, "alreadyParented":Z
    :goto_a
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->unscrapView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 1251
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1253
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1259
    :goto_23
    return-void

    .line 1249
    .end local v0    # "alreadyParented":Z
    :cond_24
    const/4 v0, 0x0

    goto :goto_a

    .line 1254
    .restart local v0    # "alreadyParented":Z
    :cond_26
    if-nez v0, :cond_2e

    .line 1255
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_23

    .line 1257
    :cond_2e
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->hide(Landroid/view/View;)V

    goto :goto_23
.end method

.method private animateChange(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .registers 9
    .param p1, "oldHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "preInfo"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "postInfo"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "oldHolderDisappearing"    # Z
    .param p6, "newHolderDisappearing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3785
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3786
    if-eqz p5, :cond_9

    .line 3787
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 3789
    :cond_9
    if-eq p1, p2, :cond_1f

    .line 3790
    if-eqz p6, :cond_10

    .line 3791
    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 3793
    :cond_10
    iput-object p2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 3795
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 3796
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->unscrapView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 3797
    invoke-virtual {p2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3798
    iput-object p1, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 3800
    :cond_1f
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->animateChange(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3801
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->postAnimationRunner()V

    .line 3803
    :cond_2a
    return-void
.end method

.method private cancelTouch()V
    .registers 2

    .prologue
    .line 2901
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->resetTouch()V

    .line 2902
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    .line 2903
    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p0, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 5141
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_12

    .line 5142
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5143
    .local v0, "item":Landroid/view/View;
    :goto_c
    if-eqz v0, :cond_21

    .line 5144
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v2, :cond_13

    .line 5157
    .end local v0    # "item":Landroid/view/View;
    :cond_12
    :goto_12
    return-void

    .line 5148
    .restart local v0    # "item":Landroid/view/View;
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 5149
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1f

    move-object v0, v1

    .line 5150
    check-cast v0, Landroid/view/View;

    goto :goto_c

    .line 5152
    :cond_1f
    const/4 v0, 0x0

    goto :goto_c

    .line 5155
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_21
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    goto :goto_12
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 629
    if-eqz p2, :cond_54

    .line 630
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 631
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_54

    .line 632
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 635
    :try_start_10
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_55

    .line 637
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 642
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :goto_1e
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_27} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_27} :catch_aa
    .catch Ljava/lang/InstantiationException; {:try_start_10 .. :try_end_27} :catch_cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_27} :catch_ee
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_27} :catch_110

    move-result-object v6

    .line 644
    .local v6, "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    const/4 v2, 0x0

    .line 646
    .local v2, "constructorArgs":[Ljava/lang/Object;
    :try_start_29
    sget-object v7, Lorg/telegram/messenger/support/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 647
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 648
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v3, v7

    const/4 v7, 0x1

    aput-object p3, v3, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7
    :try_end_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_29 .. :try_end_46} :catch_5a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_46} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_46} :catch_aa
    .catch Ljava/lang/InstantiationException; {:try_start_29 .. :try_end_46} :catch_cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_46} :catch_ee
    .catch Ljava/lang/ClassCastException; {:try_start_29 .. :try_end_46} :catch_110

    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .local v3, "constructorArgs":[Ljava/lang/Object;
    move-object v2, v3

    .line 658
    .end local v3    # "constructorArgs":[Ljava/lang/Object;
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    :goto_47
    const/4 v7, 0x1

    :try_start_48
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 659
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 678
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    :cond_54
    return-void

    .line 639
    :cond_55
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_58
    .catch Ljava/lang/ClassNotFoundException; {:try_start_48 .. :try_end_58} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_48 .. :try_end_58} :catch_aa
    .catch Ljava/lang/InstantiationException; {:try_start_48 .. :try_end_58} :catch_cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_48 .. :try_end_58} :catch_ee
    .catch Ljava/lang/ClassCastException; {:try_start_48 .. :try_end_58} :catch_110

    move-result-object v0

    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_1e

    .line 649
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    .restart local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    :catch_5a
    move-exception v4

    .line 651
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const/4 v7, 0x0

    :try_start_5c
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_61
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5c .. :try_end_61} :catch_63
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5c .. :try_end_61} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5c .. :try_end_61} :catch_aa
    .catch Ljava/lang/InstantiationException; {:try_start_5c .. :try_end_61} :catch_cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_5c .. :try_end_61} :catch_ee
    .catch Ljava/lang/ClassCastException; {:try_start_5c .. :try_end_61} :catch_110

    move-result-object v1

    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    goto :goto_47

    .line 652
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    :catch_63
    move-exception v5

    .line 653
    .local v5, "e1":Ljava/lang/NoSuchMethodException;
    :try_start_64
    invoke-virtual {v5, v4}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 654
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Error creating LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_88
    .catch Ljava/lang/ClassNotFoundException; {:try_start_64 .. :try_end_88} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_64 .. :try_end_88} :catch_aa
    .catch Ljava/lang/InstantiationException; {:try_start_64 .. :try_end_88} :catch_cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_64 .. :try_end_88} :catch_ee
    .catch Ljava/lang/ClassCastException; {:try_start_64 .. :try_end_88} :catch_110

    .line 660
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    :catch_88
    move-exception v4

    .line 661
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Unable to find LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 663
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_aa
    move-exception v4

    .line 664
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 666
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_cc
    move-exception v4

    .line 667
    .local v4, "e":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 669
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_ee
    move-exception v4

    .line 670
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Cannot access non-public constructor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 672
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_110
    move-exception v4

    .line 673
    .local v4, "e":Ljava/lang/ClassCastException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Class is not a LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private didChildRangeChange(II)Z
    .registers 6
    .param p1, "minPositionPreLayout"    # I
    .param p2, "maxPositionPreLayout"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3737
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3738
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_13

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v1

    if-eq v2, p2, :cond_14

    :cond_13
    move v0, v1

    :cond_14
    return v0
.end method

.method private dispatchContentChangedIfNecessary()V
    .registers 4

    .prologue
    .line 3109
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3110
    .local v1, "flags":I
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3111
    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3112
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3113
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3114
    invoke-static {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3115
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3117
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1c
    return-void
.end method

.method private dispatchLayoutStep1()V
    .registers 16

    .prologue
    .line 3447
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3448
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3449
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 3450
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->clear()V

    .line 3451
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3452
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3453
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->saveFocusInfo()V

    .line 3454
    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v11, v11, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v11, :cond_77

    iget-boolean v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v11, :cond_77

    const/4 v11, 0x1

    :goto_29
    iput-boolean v11, v12, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 3455
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 3456
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v12, v12, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v12, v11, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3457
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v12

    iput v12, v11, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    .line 3458
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3460
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v11, v11, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v11, :cond_b6

    .line 3462
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v2

    .line 3463
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_54
    if-ge v6, v2, :cond_b6

    .line 3464
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v11, v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 3465
    .local v5, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_74

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    if-eqz v11, :cond_79

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v11

    if-nez v11, :cond_79

    .line 3463
    :cond_74
    :goto_74
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 3454
    .end local v2    # "count":I
    .end local v5    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v6    # "i":I
    :cond_77
    const/4 v11, 0x0

    goto :goto_29

    .line 3468
    .restart local v2    # "count":I
    .restart local v5    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v6    # "i":I
    :cond_79
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .line 3470
    invoke-static {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v13

    .line 3471
    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v14

    .line 3469
    invoke-virtual {v11, v12, v5, v13, v14}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 3472
    .local v0, "animationInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11, v5, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3473
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v11, v11, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v11, :cond_74

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v11

    if-eqz v11, :cond_74

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-nez v11, :cond_74

    .line 3474
    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_74

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    if-nez v11, :cond_74

    .line 3475
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J

    move-result-wide v8

    .line 3483
    .local v8, "key":J
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11, v8, v9, v5}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToOldChangeHolders(JLorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_74

    .line 3487
    .end local v0    # "animationInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v2    # "count":I
    .end local v5    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v6    # "i":I
    .end local v8    # "key":J
    :cond_b6
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v11, v11, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v11, :cond_12f

    .line 3494
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->saveOldPositions()V

    .line 3495
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v3, v11, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3496
    .local v3, "didStructureChange":Z
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3498
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v13, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v11, v12, v13}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 3499
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput-boolean v3, v11, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3501
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_d6
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_11f

    .line 3502
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v11, v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3503
    .local v1, "child":Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 3504
    .local v7, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-eqz v11, :cond_f1

    .line 3501
    :cond_ee
    :goto_ee
    add-int/lit8 v6, v6, 0x1

    goto :goto_d6

    .line 3507
    :cond_f1
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11, v7}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->isInPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v11

    if-nez v11, :cond_ee

    .line 3508
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v4

    .line 3509
    .local v4, "flags":I
    const/16 v11, 0x2000

    .line 3510
    invoke-virtual {v7, v11}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    .line 3511
    .local v10, "wasHidden":Z
    if-nez v10, :cond_107

    .line 3512
    or-int/lit16 v4, v4, 0x1000

    .line 3514
    :cond_107
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .line 3515
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v13

    .line 3514
    invoke-virtual {v11, v12, v7, v4, v13}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 3516
    .restart local v0    # "animationInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-eqz v10, :cond_119

    .line 3517
    invoke-virtual {p0, v7, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_ee

    .line 3519
    :cond_119
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11, v7, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_ee

    .line 3524
    .end local v0    # "animationInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "flags":I
    .end local v7    # "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v10    # "wasHidden":Z
    :cond_11f
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->clearOldPositions()V

    .line 3528
    .end local v3    # "didStructureChange":Z
    .end local v6    # "i":I
    :goto_122
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3529
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3530
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v12, 0x2

    iput v12, v11, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I

    .line 3531
    return-void

    .line 3526
    :cond_12f
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->clearOldPositions()V

    goto :goto_122
.end method

.method private dispatchLayoutStep2()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3538
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 3539
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3540
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3541
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3542
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    .line 3543
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 3546
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput-boolean v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3547
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 3549
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput-boolean v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3550
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    .line 3553
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    :goto_41
    iput-boolean v0, v2, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3554
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v2, 0x4

    iput v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I

    .line 3555
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3556
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3557
    return-void

    :cond_4f
    move v0, v1

    .line 3553
    goto :goto_41
.end method

.method private dispatchLayoutStep3()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3564
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3565
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 3566
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3567
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I

    .line 3568
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_8e

    .line 3572
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_20
    if-ltz v8, :cond_87

    .line 3573
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3574
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3572
    :goto_32
    add-int/lit8 v8, v8, -0x1

    goto :goto_20

    .line 3577
    :cond_35
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J

    move-result-wide v10

    .line 3578
    .local v10, "key":J
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .line 3579
    invoke-virtual {v0, v9, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 3580
    .local v7, "animationInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v11}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->getFromOldChangeHolders(J)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3581
    .local v1, "oldChangeViewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_81

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_81

    .line 3592
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->isDisappearing(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    .line 3594
    .local v5, "oldDisappearing":Z
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->isDisappearing(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    .line 3595
    .local v6, "newDisappearing":Z
    if-eqz v5, :cond_65

    if-ne v1, v2, :cond_65

    .line 3597
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPostLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_32

    .line 3599
    :cond_65
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->popFromPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    .line 3602
    .local v3, "preInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPostLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3603
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->popFromPostLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 3604
    .local v4, "postInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-nez v3, :cond_7c

    .line 3605
    invoke-direct {p0, v10, v11, v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_32

    :cond_7c
    move-object v0, p0

    .line 3607
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->animateChange(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_32

    .line 3612
    .end local v3    # "preInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v4    # "postInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v5    # "oldDisappearing":Z
    .end local v6    # "newDisappearing":Z
    :cond_81
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPostLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_32

    .line 3617
    .end local v1    # "oldChangeViewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v7    # "animationInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v10    # "key":J
    :cond_87
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoProcessCallback:Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->process(Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;)V

    .line 3620
    .end local v8    # "i":I
    :cond_8e
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 3621
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget v9, v9, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    iput v9, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 3622
    iput-boolean v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3623
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput-boolean v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3625
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput-boolean v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 3626
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iput-boolean v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 3627
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_b8

    .line 3628
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3630
    :cond_b8
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v0, :cond_cb

    .line 3633
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 3634
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iput-boolean v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 3635
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 3638
    :cond_cb
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 3639
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3640
    invoke-virtual {p0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3641
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->clear()V

    .line 3642
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v12

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v9, v9, v13

    invoke-direct {p0, v0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 3643
    invoke-virtual {p0, v12, v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 3645
    :cond_ee
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->recoverFocusFromState()V

    .line 3646
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->resetFocusInfo()V

    .line 3647
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 2603
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2604
    .local v0, "action":I
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    if-eqz v5, :cond_e

    .line 2605
    if-nez v0, :cond_2a

    .line 2607
    iput-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2620
    :cond_e
    if-eqz v0, :cond_3a

    .line 2621
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2622
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v3, :cond_3a

    .line 2623
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2624
    .local v2, "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2625
    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2630
    .end local v1    # "i":I
    .end local v2    # "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_29
    :goto_29
    return v4

    .line 2609
    :cond_2a
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v5, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2610
    const/4 v5, 0x3

    if-eq v0, v5, :cond_34

    if-ne v0, v4, :cond_29

    .line 2612
    :cond_34
    iput-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    goto :goto_29

    .line 2622
    .restart local v1    # "i":I
    .restart local v2    # "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    .restart local v3    # "listenerCount":I
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 2630
    .end local v1    # "i":I
    .end local v2    # "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_3a
    const/4 v4, 0x0

    goto :goto_29
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    .line 2586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2587
    .local v0, "action":I
    if-eq v0, v5, :cond_9

    if-nez v0, :cond_c

    .line 2588
    :cond_9
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2591
    :cond_c
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2592
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v3, :cond_2c

    .line 2593
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2594
    .local v2, "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_29

    if-eq v0, v5, :cond_29

    .line 2595
    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2596
    const/4 v4, 0x1

    .line 2599
    .end local v2    # "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    :goto_28
    return v4

    .line 2592
    .restart local v2    # "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2599
    .end local v2    # "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    :cond_2c
    const/4 v4, 0x0

    goto :goto_28
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .registers 12
    .param p1, "into"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 3711
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3712
    .local v0, "count":I
    if-nez v0, :cond_10

    .line 3713
    aput v7, p1, v8

    .line 3714
    aput v7, p1, v9

    .line 3734
    :goto_f
    return-void

    .line 3717
    :cond_10
    const v4, 0x7fffffff

    .line 3718
    .local v4, "minPositionPreLayout":I
    const/high16 v3, -0x80000000

    .line 3719
    .local v3, "maxPositionPreLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_36

    .line 3720
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3721
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 3719
    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 3724
    :cond_2b
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    .line 3725
    .local v5, "pos":I
    if-ge v5, v4, :cond_32

    .line 3726
    move v4, v5

    .line 3728
    :cond_32
    if-le v5, v3, :cond_28

    .line 3729
    move v3, v5

    goto :goto_28

    .line 3732
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v5    # "pos":I
    :cond_36
    aput v4, p1, v8

    .line 3733
    aput v3, p1, v9

    goto :goto_f
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView;
    .registers 8
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 5119
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-nez v6, :cond_7

    move-object p0, v5

    .line 5134
    .end local p0    # "view":Landroid/view/View;
    .local v1, "count":I
    .local v3, "i":I
    .local v4, "parent":Landroid/view/ViewGroup;
    :goto_6
    return-object p0

    .line 5122
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v4    # "parent":Landroid/view/ViewGroup;
    .restart local p0    # "view":Landroid/view/View;
    :cond_7
    instance-of v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v6, :cond_e

    .line 5123
    check-cast p0, Lorg/telegram/messenger/support/widget/RecyclerView;

    goto :goto_6

    :cond_e
    move-object v4, p0

    .line 5125
    check-cast v4, Landroid/view/ViewGroup;

    .line 5126
    .restart local v4    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5127
    .restart local v1    # "count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_16
    if-ge v3, v1, :cond_27

    .line 5128
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5129
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView;

    move-result-object v2

    .line 5130
    .local v2, "descendant":Lorg/telegram/messenger/support/widget/RecyclerView;
    if-eqz v2, :cond_24

    move-object p0, v2

    .line 5131
    goto :goto_6

    .line 5127
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "descendant":Lorg/telegram/messenger/support/widget/RecyclerView;
    :cond_27
    move-object p0, v5

    .line 5134
    goto :goto_6
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .registers 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3327
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget v6, v6, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2a

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget v4, v6, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3330
    .local v4, "startFocusSearchIndex":I
    :goto_c
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    .line 3331
    .local v1, "itemCount":I
    move v0, v4

    .local v0, "i":I
    :goto_13
    if-ge v0, v1, :cond_1b

    .line 3332
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3333
    .local v3, "nextFocus":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_2c

    .line 3340
    .end local v3    # "nextFocus":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1b
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3341
    .local v2, "limit":I
    add-int/lit8 v0, v2, -0x1

    :goto_21
    if-ltz v0, :cond_29

    .line 3342
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3343
    .restart local v3    # "nextFocus":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_3a

    .line 3350
    .end local v2    # "limit":I
    .end local v3    # "nextFocus":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_29
    :goto_29
    return-object v5

    .line 3327
    .end local v0    # "i":I
    .end local v1    # "itemCount":I
    .end local v4    # "startFocusSearchIndex":I
    :cond_2a
    const/4 v4, 0x0

    goto :goto_c

    .line 3336
    .restart local v0    # "i":I
    .restart local v1    # "itemCount":I
    .restart local v3    # "nextFocus":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v4    # "startFocusSearchIndex":I
    :cond_2c
    iget-object v6, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 3337
    iget-object v5, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_29

    .line 3331
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 3346
    .restart local v2    # "limit":I
    :cond_3a
    iget-object v6, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 3347
    iget-object v5, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_29

    .line 3341
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_21
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 2
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 4234
    if-nez p0, :cond_4

    .line 4235
    const/4 v0, 0x0

    .line 4237
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    goto :goto_3
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 4508
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 4509
    .local v1, "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 4510
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 4511
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 4512
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 4513
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 4510
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4514
    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3428
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3429
    .local v1, "lastKnownId":I
    :cond_4
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_26

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 3430
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 3431
    .restart local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3432
    .local v0, "id":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 3433
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_4

    .line 3436
    .end local v0    # "id":I
    :cond_26
    return v1
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2e

    .line 681
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1f

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 687
    .end local p2    # "className":Ljava/lang/String;
    :cond_1e
    :goto_1e
    return-object p2

    .line 684
    .restart local p2    # "className":Ljava/lang/String;
    :cond_1f
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1e
.end method

.method private getScrollFactor()F
    .registers 5

    .prologue
    .line 2956
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollFactor:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_30

    .line 2957
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2958
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2961
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2960
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollFactor:F

    .line 2966
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_30
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollFactor:F

    :goto_32
    return v1

    .line 2963
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_33
    const/4 v1, 0x0

    goto :goto_32
.end method

.method private getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;
    .registers 2

    .prologue
    .line 12298
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    if-nez v0, :cond_b

    .line 12299
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 12301
    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 14
    .param p1, "key"    # J
    .param p3, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p4, "oldChangeViewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3667
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3668
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_72

    .line 3669
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3670
    .local v3, "view":Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3671
    .local v2, "other":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-ne v2, p3, :cond_18

    .line 3668
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3674
    :cond_18
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 3675
    .local v4, "otherKey":J
    cmp-long v6, v4, p1

    if-nez v6, :cond_15

    .line 3676
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v6, :cond_4f

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 3677
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3681
    :cond_4f
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3689
    .end local v2    # "other":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "otherKey":J
    :cond_72
    const-string v6, "RecyclerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cannot be found but it is necessary for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    return-void
.end method

.method private hasUpdatedView()Z
    .registers 5

    .prologue
    .line 1636
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 1637
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_26

    .line 1638
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1639
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1637
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1642
    :cond_1e
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1643
    const/4 v3, 0x1

    .line 1646
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :goto_25
    return v3

    :cond_26
    const/4 v3, 0x0

    goto :goto_25
.end method

.method private initChildrenHelper()V
    .registers 3

    .prologue
    .line 691
    new-instance v0, Lorg/telegram/messenger/support/widget/ChildHelper;

    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$5;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;-><init>(Lorg/telegram/messenger/support/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    .line 788
    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .registers 10
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2346
    if-eqz p2, :cond_7

    if-ne p2, p0, :cond_9

    :cond_7
    move v2, v3

    .line 2366
    :cond_8
    :goto_8
    return v2

    .line 2349
    :cond_9
    if-eqz p1, :cond_8

    .line 2353
    if-eq p3, v5, :cond_f

    if-ne p3, v2, :cond_3b

    .line 2354
    :cond_f
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_2f

    move v1, v2

    .line 2355
    .local v1, "rtl":Z
    :goto_18
    if-ne p3, v5, :cond_1b

    move v3, v2

    :cond_1b
    xor-int/2addr v3, v1

    if-eqz v3, :cond_31

    const/16 v0, 0x42

    .line 2357
    .local v0, "absHorizontal":I
    :goto_20
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2360
    if-ne p3, v5, :cond_34

    .line 2361
    const/16 v2, 0x82

    invoke-direct {p0, p1, p2, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    goto :goto_8

    .end local v0    # "absHorizontal":I
    .end local v1    # "rtl":Z
    :cond_2f
    move v1, v3

    .line 2354
    goto :goto_18

    .line 2355
    .restart local v1    # "rtl":Z
    :cond_31
    const/16 v0, 0x11

    goto :goto_20

    .line 2363
    .restart local v0    # "absHorizontal":I
    :cond_34
    const/16 v2, 0x21

    invoke-direct {p0, p1, p2, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    goto :goto_8

    .line 2366
    .end local v0    # "absHorizontal":I
    .end local v1    # "rtl":Z
    :cond_3b
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    goto :goto_8
.end method

.method private isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z
    .registers 9
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2375
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2376
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2377
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2378
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2379
    sparse-switch p3, :sswitch_data_c4

    .line 2397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "direction must be absolute. received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2381
    :sswitch_42
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_56

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_61

    :cond_56
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_61

    .line 2393
    :cond_60
    :goto_60
    return v0

    :cond_61
    move v0, v1

    .line 2381
    goto :goto_60

    .line 2385
    :sswitch_63
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_77

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_81

    :cond_77
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_60

    :cond_81
    move v0, v1

    goto :goto_60

    .line 2389
    :sswitch_83
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_97

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_a1

    :cond_97
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_60

    :cond_a1
    move v0, v1

    goto :goto_60

    .line 2393
    :sswitch_a3
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_b7

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_c1

    :cond_b7
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_60

    :cond_c1
    move v0, v1

    goto :goto_60

    .line 2379
    nop

    :sswitch_data_c4
    .sparse-switch
        0x11 -> :sswitch_42
        0x21 -> :sswitch_83
        0x42 -> :sswitch_63
        0x82 -> :sswitch_a3
    .end sparse-switch
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 2906
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2907
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    if-ne v2, v3, :cond_2b

    .line 2909
    if-nez v0, :cond_2c

    const/4 v1, 0x1

    .line 2910
    .local v1, "newIndex":I
    :goto_11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    .line 2911
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    .line 2912
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    .line 2914
    .end local v1    # "newIndex":I
    :cond_2b
    return-void

    .line 2909
    :cond_2c
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private predictiveItemAnimationsEnabled()Z
    .registers 2

    .prologue
    .line 3198
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3208
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_10

    .line 3211
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->reset()V

    .line 3212
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onItemsChanged(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 3217
    :cond_10
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 3218
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->preProcess()V

    .line 3222
    :goto_1b
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v3, :cond_23

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_66

    :cond_23
    move v0, v2

    .line 3223
    .local v0, "animationTypeSupported":Z
    :goto_24
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_68

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_68

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_3a

    if-nez v0, :cond_3a

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-boolean v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v3, :cond_68

    :cond_3a
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_46

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .line 3229
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_68

    :cond_46
    move v3, v2

    :goto_47
    iput-boolean v3, v4, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3230
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_6a

    if-eqz v0, :cond_6a

    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_6a

    .line 3233
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_6a

    :goto_5d
    iput-boolean v2, v3, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 3234
    return-void

    .line 3220
    .end local v0    # "animationTypeSupported":Z
    :cond_60
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    goto :goto_1b

    :cond_66
    move v0, v1

    .line 3222
    goto :goto_24

    .restart local v0    # "animationTypeSupported":Z
    :cond_68
    move v3, v1

    .line 3229
    goto :goto_47

    :cond_6a
    move v2, v1

    .line 3233
    goto :goto_5d
.end method

.method private pullGlows(FFFF)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "overscrollX"    # F
    .param p3, "y"    # F
    .param p4, "overscrollY"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 2084
    const/4 v0, 0x0

    .line 2085
    .local v0, "invalidate":Z
    cmpg-float v1, p2, v4

    if-gez v1, :cond_50

    .line 2086
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureLeftGlow()V

    .line 2087
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v2, p2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2088
    const/4 v0, 0x1

    .line 2097
    :cond_24
    :goto_24
    cmpg-float v1, p4, v4

    if-gez v1, :cond_6f

    .line 2098
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureTopGlow()V

    .line 2099
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v2, p4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2100
    const/4 v0, 0x1

    .line 2109
    :cond_42
    :goto_42
    if-nez v0, :cond_4c

    cmpl-float v1, p2, v4

    if-nez v1, :cond_4c

    cmpl-float v1, p4, v4

    if-eqz v1, :cond_4f

    .line 2110
    :cond_4c
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2112
    :cond_4f
    return-void

    .line 2090
    :cond_50
    cmpl-float v1, p2, v4

    if-lez v1, :cond_24

    .line 2091
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureRightGlow()V

    .line 2092
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2093
    const/4 v0, 0x1

    goto :goto_24

    .line 2102
    :cond_6f
    cmpl-float v1, p4, v4

    if-lez v1, :cond_42

    .line 2103
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureBottomGlow()V

    .line 2104
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2105
    const/4 v0, 0x1

    goto :goto_42
.end method

.method private recoverFocusFromState()V
    .registers 9

    .prologue
    const-wide/16 v6, -0x1

    .line 3354
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v4, :cond_26

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_26

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3355
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getDescendantFocusability()I

    move-result v4

    const/high16 v5, 0x60000

    if-eq v4, v5, :cond_26

    .line 3356
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getDescendantFocusability()I

    move-result v4

    const/high16 v5, 0x20000

    if-ne v4, v5, :cond_27

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 3425
    :cond_26
    :goto_26
    return-void

    .line 3364
    :cond_27
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_55

    .line 3365
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 3366
    .local v2, "focusedChild":Landroid/view/View;
    sget-boolean v4, Lorg/telegram/messenger/support/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v4, :cond_4d

    .line 3367
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_41

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 3379
    :cond_41
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v4

    if-nez v4, :cond_55

    .line 3382
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestFocus()Z

    goto :goto_26

    .line 3385
    :cond_4d
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3391
    .end local v2    # "focusedChild":Landroid/view/View;
    :cond_55
    const/4 v1, 0x0

    .line 3395
    .local v1, "focusTarget":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-wide v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mFocusedItemId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6e

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 3396
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-wide v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->findViewHolderForItemId(J)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3398
    :cond_6e
    const/4 v3, 0x0

    .line 3399
    .local v3, "viewToFocus":Landroid/view/View;
    if-eqz v1, :cond_83

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    iget-object v5, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_83

    iget-object v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3400
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_b0

    .line 3401
    :cond_83
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v4

    if-lez v4, :cond_8f

    .line 3408
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v3

    .line 3416
    :cond_8f
    :goto_8f
    if-eqz v3, :cond_26

    .line 3417
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v4, v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_ab

    .line 3418
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mFocusedSubChildId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3419
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 3420
    move-object v3, v0

    .line 3423
    .end local v0    # "child":Landroid/view/View;
    :cond_ab
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_26

    .line 3413
    :cond_b0
    iget-object v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_8f
.end method

.method private releaseGlows()V
    .registers 3

    .prologue
    .line 2115
    const/4 v0, 0x0

    .line 2116
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 2117
    :cond_b
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2118
    :cond_16
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2119
    :cond_21
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2120
    :cond_2c
    if-eqz v0, :cond_31

    .line 2121
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2123
    :cond_31
    return-void
.end method

.method private resetFocusInfo()V
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 3312
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3313
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3314
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mFocusedSubChildId:I

    .line 3315
    return-void
.end method

.method private resetTouch()V
    .registers 2

    .prologue
    .line 2893
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 2894
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2896
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopNestedScroll()V

    .line 2897
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->releaseGlows()V

    .line 2898
    return-void
.end method

.method private saveFocusInfo()V
    .registers 6

    .prologue
    .line 3291
    const/4 v0, 0x0

    .line 3292
    .local v0, "child":Landroid/view/View;
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_13

    .line 3293
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3296
    :cond_13
    if-nez v0, :cond_1c

    const/4 v1, 0x0

    .line 3297
    .local v1, "focusedVh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :goto_16
    if-nez v1, :cond_21

    .line 3298
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->resetFocusInfo()V

    .line 3309
    :goto_1b
    return-void

    .line 3296
    .end local v1    # "focusedVh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1c
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_16

    .line 3300
    .restart local v1    # "focusedVh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_21
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    :goto_2f
    iput-wide v2, v4, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3304
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_48

    const/4 v2, -0x1

    .line 3306
    :goto_38
    iput v2, v3, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3307
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mFocusedSubChildId:I

    goto :goto_1b

    .line 3300
    :cond_45
    const-wide/16 v2, -0x1

    goto :goto_2f

    .line 3305
    :cond_48
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_51

    iget v2, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_38

    .line 3306
    :cond_51
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    goto :goto_38
.end method

.method private setAdapterInternal(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;ZZ)V
    .registers 7
    .param p1, "adapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleViews"    # Z

    .prologue
    .line 1017
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_10

    .line 1018
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mObserver:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;)V

    .line 1019
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1021
    :cond_10
    if-eqz p2, :cond_14

    if-eqz p3, :cond_17

    .line 1022
    :cond_14
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeAndRecycleViews()V

    .line 1024
    :cond_17
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->reset()V

    .line 1025
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .line 1026
    .local v0, "oldAdapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .line 1027
    if-eqz p1, :cond_2a

    .line 1028
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mObserver:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;)V

    .line 1029
    invoke-virtual {p1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1031
    :cond_2a
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_35

    .line 1032
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1034
    :cond_35
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Z)V

    .line 1035
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    .line 1036
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 1037
    return-void
.end method

.method private stopScrollersInternal()V
    .registers 2

    .prologue
    .line 2055
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->stop()V

    .line 2056
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_e

    .line 2057
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 2059
    :cond_e
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .registers 5
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 2145
    if-gez p1, :cond_1e

    .line 2146
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureLeftGlow()V

    .line 2147
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 2153
    :cond_b
    :goto_b
    if-gez p2, :cond_29

    .line 2154
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureTopGlow()V

    .line 2155
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 2161
    :cond_16
    :goto_16
    if-nez p1, :cond_1a

    if-eqz p2, :cond_1d

    .line 2162
    :cond_1a
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2164
    :cond_1d
    return-void

    .line 2148
    :cond_1e
    if-lez p1, :cond_b

    .line 2149
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureRightGlow()V

    .line 2150
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_b

    .line 2156
    :cond_29
    if-lez p2, :cond_16

    .line 2157
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureBottomGlow()V

    .line 2158
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_16
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 5
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2435
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onAddFocusables(Lorg/telegram/messenger/support/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2436
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2438
    :cond_f
    return-void
.end method

.method public addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V
    .registers 3
    .param p1, "decor"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;

    .prologue
    .line 1412
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;I)V

    .line 1413
    return-void
.end method

.method public addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;I)V
    .registers 5
    .param p1, "decor"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .prologue
    .line 1383
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_b

    .line 1384
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1387
    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1390
    :cond_17
    if-gez p2, :cond_25

    .line 1391
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    :goto_1e
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1396
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 1397
    return-void

    .line 1393
    :cond_25
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1e
.end method

.method public addOnChildAttachStateChangeListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;

    .prologue
    .line 1092
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1093
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 1095
    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    return-void
.end method

.method public addOnItemTouchListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .prologue
    .line 2570
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2571
    return-void
.end method

.method public addOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 1480
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1483
    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    return-void
.end method

.method animateAppearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "itemHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3767
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3768
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->animateAppearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3769
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->postAnimationRunner()V

    .line 3771
    :cond_f
    return-void
.end method

.method animateDisappearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3775
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 3776
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3777
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->animateDisappearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3778
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->postAnimationRunner()V

    .line 3780
    :cond_12
    return-void
.end method

.method applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V
    .registers 7
    .param p1, "edgeEffectCompat"    # Landroid/support/v4/widget/EdgeEffectCompat;

    .prologue
    .line 2223
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_23

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->glowColor:I

    if-eqz v3, :cond_23

    .line 2225
    :try_start_a
    const-class v3, Landroid/support/v4/widget/EdgeEffectCompat;

    const-string v4, "mEdgeEffect"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2226
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2227
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EdgeEffect;

    .line 2228
    .local v1, "edgeEffect":Landroid/widget/EdgeEffect;
    if-eqz v1, :cond_23

    .line 2229
    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->glowColor:I

    invoke-virtual {v1, v3}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_23} :catch_24

    .line 2235
    .end local v1    # "edgeEffect":Landroid/widget/EdgeEffect;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_23
    :goto_23
    return-void

    .line 2231
    :catch_24
    move-exception v0

    .line 2232
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2522
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2523
    if-nez p1, :cond_10

    .line 2524
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2527
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2530
    :cond_16
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2540
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2541
    if-nez p1, :cond_10

    .line 2542
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2545
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2547
    :cond_16
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez v0, :cond_28

    .line 2548
    const-string v0, "RecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks might be run during a measure & layout pass where you cannot change the RecyclerView data. Any method call that might change the structure of the RecyclerView or the adapter contents should be postponed to the next frame."

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2554
    :cond_28
    return-void
.end method

.method canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 4079
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    .line 4080
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    .line 4079
    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3905
    instance-of v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    check-cast p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->checkLayoutParams(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method clearOldPositions()V
    .registers 5

    .prologue
    .line 3959
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3960
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1f

    .line 3961
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3962
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 3963
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 3960
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3966
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1f
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clearOldPositions()V

    .line 3967
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .registers 2

    .prologue
    .line 1115
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1116
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1118
    :cond_9
    return-void
.end method

.method public clearOnScrollListeners()V
    .registers 2

    .prologue
    .line 1501
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1502
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1504
    :cond_9
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1755
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    .line 1758
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_5
.end method

.method public computeHorizontalScrollOffset()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1730
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    .line 1733
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_5
.end method

.method public computeHorizontalScrollRange()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1778
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    .line 1781
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_5
.end method

.method public computeVerticalScrollExtent()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1827
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    .line 1830
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_5
.end method

.method public computeVerticalScrollOffset()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1803
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    .line 1806
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_5
.end method

.method public computeVerticalScrollRange()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1850
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_6

    .line 1853
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_5
.end method

.method considerReleasingGlowsOnScroll(II)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 2126
    const/4 v0, 0x0

    .line 2127
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    if-lez p1, :cond_15

    .line 2128
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 2130
    :cond_15
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2a

    if-gez p1, :cond_2a

    .line 2131
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2133
    :cond_2a
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3f

    if-lez p2, :cond_3f

    .line 2134
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2136
    :cond_3f
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_54

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_54

    if-gez p2, :cond_54

    .line 2137
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2139
    :cond_54
    if-eqz v0, :cond_59

    .line 2140
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2142
    :cond_59
    return-void
.end method

.method consumePendingUpdateOperations()V
    .registers 3

    .prologue
    .line 1595
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_14

    .line 1596
    :cond_8
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    .line 1598
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1630
    :cond_13
    :goto_13
    return-void

    .line 1601
    :cond_14
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1607
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    const/16 v1, 0xb

    .line 1608
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1610
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 1612
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1613
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->preProcess()V

    .line 1614
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v0, :cond_4c

    .line 1615
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1616
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    .line 1622
    :cond_4c
    :goto_4c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1623
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1624
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_13

    .line 1619
    :cond_57
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->consumePostponedUpdates()V

    goto :goto_4c

    .line 1625
    :cond_5d
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1626
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    .line 1628
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_13
.end method

.method defaultOnMeasure(II)V
    .registers 7
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 3046
    .line 3047
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 3048
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v3

    .line 3046
    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v1

    .line 3050
    .local v1, "width":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 3051
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    .line 3049
    invoke-static {p2, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    .line 3053
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 3054
    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6797
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 6798
    .local v2, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 6799
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_12

    if-eqz v2, :cond_12

    .line 6800
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 6802
    :cond_12
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_2e

    .line 6803
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 6804
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1e
    if-ltz v1, :cond_2e

    .line 6805
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 6804
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 6808
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6783
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 6784
    .local v2, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 6785
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_12

    if-eqz v2, :cond_12

    .line 6786
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 6788
    :cond_12
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_2e

    .line 6789
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 6790
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1e
    if-ltz v1, :cond_2e

    .line 6791
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 6790
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 6794
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method

.method dispatchLayout()V
    .registers 3

    .prologue
    .line 3262
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-nez v0, :cond_c

    .line 3263
    const-string v0, "RecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    :goto_b
    return-void

    .line 3267
    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_18

    .line 3268
    const-string v0, "RecyclerView"

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3272
    :cond_18
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3273
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 3274
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3275
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 3276
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3287
    :goto_2f
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep3()V

    goto :goto_b

    .line 3277
    :cond_33
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .line 3278
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_5c

    .line 3281
    :cond_53
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 3282
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_2f

    .line 3285
    :cond_5c
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    goto :goto_2f
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 10492
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 10497
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 10487
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 10481
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 4606
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_9

    .line 4607
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 4612
    :cond_9
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4615
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_15

    .line 4616
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V

    .line 4618
    :cond_15
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_31

    .line 4619
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_21
    if-ltz v0, :cond_31

    .line 4620
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V

    .line 4619
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 4623
    .end local v0    # "i":I
    :cond_31
    return-void
.end method

.method dispatchOnScrolled(II)V
    .registers 7
    .param p1, "hresult"    # I
    .param p2, "vresult"    # I

    .prologue
    .line 4566
    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4569
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollX()I

    move-result v1

    .line 4570
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollY()I

    move-result v2

    .line 4571
    .local v2, "scrollY":I
    invoke-virtual {p0, v1, v2, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 4574
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->onScrolled(II)V

    .line 4578
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    if-eqz v3, :cond_1d

    .line 4579
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    .line 4581
    :cond_1d
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v3, :cond_39

    .line 4582
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_29
    if-ltz v0, :cond_39

    .line 4583
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    .line 4582
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    .line 4586
    .end local v0    # "i":I
    :cond_39
    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4587
    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 10426
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_30

    .line 10427
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 10428
    .local v2, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    iget-object v3, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_21

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 10426
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 10431
    :cond_24
    iget v1, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10432
    .local v1, "state":I
    if-eq v1, v4, :cond_21

    .line 10434
    iget-object v3, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 10435
    iput v4, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    goto :goto_21

    .line 10439
    .end local v1    # "state":I
    .end local v2    # "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_30
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 10440
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1236
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1237
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1228
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1229
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3833
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3835
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3836
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1f

    .line 3837
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v6, p1, p0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 3836
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 3841
    :cond_1f
    const/4 v2, 0x0

    .line 3842
    .local v2, "needsInvalidate":Z
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_57

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_57

    .line 3843
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3844
    .local v4, "restore":I
    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_127

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    .line 3845
    .local v3, "padding":I
    :goto_38
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3846
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {p1, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3847
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_12a

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_12a

    move v2, v8

    .line 3848
    :goto_54
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3850
    .end local v3    # "padding":I
    .end local v4    # "restore":I
    :cond_57
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_8f

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_8f

    .line 3851
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3852
    .restart local v4    # "restore":I
    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_78

    .line 3853
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3855
    :cond_78
    iget v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->topGlowOffset:I

    int-to-float v6, v6

    invoke-virtual {p1, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3856
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_12d

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_12d

    move v6, v8

    :goto_8b
    or-int/2addr v2, v6

    .line 3857
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3859
    .end local v4    # "restore":I
    :cond_8f
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_c8

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_c8

    .line 3860
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3861
    .restart local v4    # "restore":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 3862
    .local v5, "width":I
    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_130

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 3863
    .restart local v3    # "padding":I
    :goto_ab
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3864
    neg-int v6, v3

    int-to-float v6, v6

    neg-int v9, v5

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3865
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_133

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_133

    move v6, v8

    :goto_c4
    or-int/2addr v2, v6

    .line 3866
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3868
    .end local v3    # "padding":I
    .end local v4    # "restore":I
    .end local v5    # "width":I
    :cond_c8
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_10a

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_10a

    .line 3869
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3870
    .restart local v4    # "restore":I
    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3871
    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_135

    .line 3872
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3876
    :goto_fa
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_145

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_145

    :goto_106
    or-int/2addr v2, v8

    .line 3877
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3883
    .end local v4    # "restore":I
    :cond_10a
    if-nez v2, :cond_121

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_121

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_121

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    .line 3884
    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_121

    .line 3885
    const/4 v2, 0x1

    .line 3888
    :cond_121
    if-eqz v2, :cond_126

    .line 3889
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3891
    :cond_126
    return-void

    .restart local v4    # "restore":I
    :cond_127
    move v3, v7

    .line 3844
    goto/16 :goto_38

    .restart local v3    # "padding":I
    :cond_12a
    move v2, v7

    .line 3847
    goto/16 :goto_54

    .end local v3    # "padding":I
    :cond_12d
    move v6, v7

    .line 3856
    goto/16 :goto_8b

    .restart local v5    # "width":I
    :cond_130
    move v3, v7

    .line 3862
    goto/16 :goto_ab

    .restart local v3    # "padding":I
    :cond_133
    move v6, v7

    .line 3865
    goto :goto_c4

    .line 3874
    .end local v3    # "padding":I
    .end local v5    # "width":I
    :cond_135
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_fa

    :cond_145
    move v8, v7

    .line 3876
    goto :goto_106
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 4442
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method eatRequestLayout()V
    .registers 3

    .prologue
    .line 1858
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    .line 1859
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_12

    .line 1860
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1862
    :cond_12
    return-void
.end method

.method ensureBottomGlow()V
    .registers 5

    .prologue
    .line 2209
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_5

    .line 2220
    :goto_4
    return-void

    .line 2212
    :cond_5
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2213
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_3b

    .line 2214
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2215
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2214
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2219
    :goto_35
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V

    goto :goto_4

    .line 2217
    :cond_3b
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_35
.end method

.method ensureLeftGlow()V
    .registers 5

    .prologue
    .line 2167
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_5

    .line 2178
    :goto_4
    return-void

    .line 2170
    :cond_5
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2171
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_3b

    .line 2172
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2173
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2172
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2177
    :goto_35
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V

    goto :goto_4

    .line 2175
    :cond_3b
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_35
.end method

.method ensureRightGlow()V
    .registers 5

    .prologue
    .line 2181
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_5

    .line 2192
    :goto_4
    return-void

    .line 2184
    :cond_5
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2185
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_3b

    .line 2186
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2187
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2186
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2191
    :goto_35
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V

    goto :goto_4

    .line 2189
    :cond_3b
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_35
.end method

.method ensureTopGlow()V
    .registers 5

    .prologue
    .line 2195
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_5

    .line 2206
    :goto_4
    return-void

    .line 2198
    :cond_5
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2199
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_3b

    .line 2200
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2201
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2200
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2205
    :goto_35
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V

    goto :goto_4

    .line 2203
    :cond_3b
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_35
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4425
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v1

    .line 4426
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_44

    .line 4427
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4428
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v3

    .line 4429
    .local v3, "translationX":F
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    .line 4430
    .local v4, "translationY":F
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_41

    .line 4431
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_41

    .line 4432
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_41

    .line 4433
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_41

    .line 4437
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :goto_40
    return-object v0

    .line 4426
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "translationX":F
    .restart local v4    # "translationY":F
    :cond_41
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 4437
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :cond_44
    const/4 v0, 0x0

    goto :goto_40
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 4210
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4211
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_4
    if-eqz v0, :cond_14

    if-eq v0, p0, :cond_14

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_14

    move-object p1, v0

    .line 4212
    check-cast p1, Landroid/view/View;

    .line 4213
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 4215
    :cond_14
    if-ne v0, p0, :cond_17

    .end local p1    # "view":Landroid/view/View;
    :goto_16
    return-object p1

    .restart local p1    # "view":Landroid/view/View;
    :cond_17
    const/4 p1, 0x0

    goto :goto_16
.end method

.method public findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 4228
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4229
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_7
.end method

.method public findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 4339
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_6

    .line 4340
    const/4 v2, 0x0

    .line 4355
    :cond_5
    :goto_5
    return-object v2

    .line 4342
    :cond_6
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4344
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4345
    .local v1, "hidden":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v0, :cond_36

    .line 4346
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4347
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapterPositionFor(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_33

    .line 4348
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    iget-object v5, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4349
    move-object v1, v2

    .line 4345
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_36
    move-object v2, v1

    .line 4355
    goto :goto_5
.end method

.method public findViewHolderForItemId(J)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 10
    .param p1, "id"    # J

    .prologue
    .line 4399
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_e

    .line 4400
    :cond_c
    const/4 v2, 0x0

    .line 4414
    :cond_d
    :goto_d
    return-object v2

    .line 4402
    :cond_e
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4403
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4404
    .local v1, "hidden":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v0, :cond_40

    .line 4405
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4406
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_3d

    .line 4407
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    iget-object v5, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4408
    move-object v1, v2

    .line 4404
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_40
    move-object v2, v1

    .line 4414
    goto :goto_d
.end method

.method public findViewHolderForLayoutPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 4318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->findViewHolderForPosition(IZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4295
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->findViewHolderForPosition(IZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 9
    .param p1, "position"    # I
    .param p2, "checkNewPosition"    # Z

    .prologue
    .line 4359
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4360
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4361
    .local v1, "hidden":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v0, :cond_37

    .line 4362
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4363
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_22

    .line 4364
    if-eqz p2, :cond_25

    .line 4365
    iget v4, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_2b

    .line 4361
    :cond_22
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 4368
    :cond_25
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_22

    .line 4371
    :cond_2b
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    iget-object v5, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 4372
    move-object v1, v2

    goto :goto_22

    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_37
    move-object v2, v1

    .line 4381
    :cond_38
    return-object v2
.end method

.method public fling(II)Z
    .registers 10
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2001
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v5, :cond_e

    .line 2002
    const-string v4, "RecyclerView"

    const-string v5, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    :cond_d
    :goto_d
    return v3

    .line 2006
    :cond_e
    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v5, :cond_d

    .line 2010
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 2011
    .local v1, "canScrollHorizontal":Z
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 2013
    .local v2, "canScrollVertical":Z
    if-eqz v1, :cond_28

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_29

    .line 2014
    :cond_28
    const/4 p1, 0x0

    .line 2016
    :cond_29
    if-eqz v2, :cond_33

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_34

    .line 2017
    :cond_33
    const/4 p2, 0x0

    .line 2019
    :cond_34
    if-nez p1, :cond_38

    if-eqz p2, :cond_d

    .line 2024
    :cond_38
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_d

    .line 2025
    if-nez v1, :cond_44

    if-eqz v2, :cond_58

    :cond_44
    move v0, v4

    .line 2026
    .local v0, "canScroll":Z
    :goto_45
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 2028
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnFlingListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;

    if-eqz v5, :cond_5a

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnFlingListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;

    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v5

    if-eqz v5, :cond_5a

    move v3, v4

    .line 2029
    goto :goto_d

    .end local v0    # "canScroll":Z
    :cond_58
    move v0, v3

    .line 2025
    goto :goto_45

    .line 2032
    .restart local v0    # "canScroll":Z
    :cond_5a
    if-eqz v0, :cond_d

    .line 2033
    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2034
    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2035
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->fling(II)V

    move v3, v4

    .line 2036
    goto :goto_d
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 16
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2273
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v11, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 2274
    .local v6, "result":Landroid/view/View;
    if-eqz v6, :cond_e

    move-object v8, v6

    .line 2333
    :goto_d
    return-object v8

    .line 2277
    :cond_e
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v11, :cond_78

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v11, :cond_78

    .line 2278
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v11

    if-nez v11, :cond_78

    iget-boolean v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v11, :cond_78

    move v1, v8

    .line 2280
    .local v1, "canRunFocusFailure":Z
    :goto_21
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    .line 2281
    .local v2, "ff":Landroid/view/FocusFinder;
    if-eqz v1, :cond_a4

    if-eq p2, v12, :cond_2b

    if-ne p2, v8, :cond_a4

    .line 2285
    :cond_2b
    const/4 v5, 0x0

    .line 2286
    .local v5, "needsFocusFailureLayout":Z
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    if-eqz v11, :cond_44

    .line 2287
    if-ne p2, v12, :cond_7a

    const/16 v0, 0x82

    .line 2289
    .local v0, "absDir":I
    :goto_38
    invoke-virtual {v2, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2290
    .local v4, "found":Landroid/view/View;
    if-nez v4, :cond_7d

    move v5, v8

    .line 2291
    :goto_3f
    sget-boolean v11, Lorg/telegram/messenger/support/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v11, :cond_44

    .line 2293
    move p2, v0

    .line 2296
    .end local v0    # "absDir":I
    .end local v4    # "found":Landroid/view/View;
    :cond_44
    if-nez v5, :cond_6b

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 2297
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v11

    if-ne v11, v8, :cond_7f

    move v7, v8

    .line 2298
    .local v7, "rtl":Z
    :goto_57
    if-ne p2, v12, :cond_81

    move v11, v8

    :goto_5a
    xor-int/2addr v11, v7

    if-eqz v11, :cond_83

    const/16 v0, 0x42

    .line 2300
    .restart local v0    # "absDir":I
    :goto_5f
    invoke-virtual {v2, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2301
    .restart local v4    # "found":Landroid/view/View;
    if-nez v4, :cond_86

    move v5, v8

    .line 2302
    :goto_66
    sget-boolean v8, Lorg/telegram/messenger/support/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v8, :cond_6b

    .line 2304
    move p2, v0

    .line 2307
    .end local v0    # "absDir":I
    .end local v4    # "found":Landroid/view/View;
    .end local v7    # "rtl":Z
    :cond_6b
    if-eqz v5, :cond_97

    .line 2308
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2309
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 2310
    .local v3, "focusedItemView":Landroid/view/View;
    if-nez v3, :cond_88

    move-object v8, v10

    .line 2312
    goto :goto_d

    .end local v1    # "canRunFocusFailure":Z
    .end local v2    # "ff":Landroid/view/FocusFinder;
    .end local v3    # "focusedItemView":Landroid/view/View;
    .end local v5    # "needsFocusFailureLayout":Z
    :cond_78
    move v1, v9

    .line 2278
    goto :goto_21

    .line 2287
    .restart local v1    # "canRunFocusFailure":Z
    .restart local v2    # "ff":Landroid/view/FocusFinder;
    .restart local v5    # "needsFocusFailureLayout":Z
    :cond_7a
    const/16 v0, 0x21

    goto :goto_38

    .restart local v0    # "absDir":I
    .restart local v4    # "found":Landroid/view/View;
    :cond_7d
    move v5, v9

    .line 2290
    goto :goto_3f

    .end local v0    # "absDir":I
    .end local v4    # "found":Landroid/view/View;
    :cond_7f
    move v7, v9

    .line 2297
    goto :goto_57

    .restart local v7    # "rtl":Z
    :cond_81
    move v11, v9

    .line 2298
    goto :goto_5a

    :cond_83
    const/16 v0, 0x11

    goto :goto_5f

    .restart local v0    # "absDir":I
    .restart local v4    # "found":Landroid/view/View;
    :cond_86
    move v5, v9

    .line 2301
    goto :goto_66

    .line 2314
    .end local v0    # "absDir":I
    .end local v4    # "found":Landroid/view/View;
    .end local v7    # "rtl":Z
    .restart local v3    # "focusedItemView":Landroid/view/View;
    :cond_88
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 2315
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v8, p1, p2, v10, v11}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    .line 2316
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2318
    .end local v3    # "focusedItemView":Landroid/view/View;
    :cond_97
    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 2333
    .end local v5    # "needsFocusFailureLayout":Z
    :cond_9b
    :goto_9b
    invoke-direct {p0, p1, v6, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_c9

    move-object v8, v6

    goto/16 :goto_d

    .line 2320
    :cond_a4
    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 2321
    if-nez v6, :cond_9b

    if-eqz v1, :cond_9b

    .line 2322
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2323
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 2324
    .restart local v3    # "focusedItemView":Landroid/view/View;
    if-nez v3, :cond_b8

    move-object v8, v10

    .line 2326
    goto/16 :goto_d

    .line 2328
    :cond_b8
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 2329
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v8, p1, p2, v10, v11}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v6

    .line 2330
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    goto :goto_9b

    .line 2334
    .end local v3    # "focusedItemView":Landroid/view/View;
    :cond_c9
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    goto/16 :goto_d
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 3910
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    .line 3911
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3913
    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3918
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    .line 3919
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3921
    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3926
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    .line 3927
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3929
    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .registers 2

    .prologue
    .line 1046
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method getAdapterPositionFor(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .registers 4
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 10443
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 10445
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_10

    .line 10446
    :cond_e
    const/4 v0, -0x1

    .line 10448
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    iget v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    goto :goto_f
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 1073
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_b

    .line 1074
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    .line 1076
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_a
.end method

.method getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3762
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    iget v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    goto :goto_c
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4256
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4257
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x1

    goto :goto_a
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 12268
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_9

    .line 12269
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 12271
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    goto :goto_8
.end method

.method public getChildItemId(Landroid/view/View;)J
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, -0x1

    .line 4282
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4286
    :cond_e
    :goto_e
    return-wide v2

    .line 4285
    :cond_f
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4286
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    goto :goto_e
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4271
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4272
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getChildPosition(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4246
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4187
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4188
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_2b

    if-eq v0, p0, :cond_2b

    .line 4189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4192
    :cond_2b
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public getClipToPadding()Z
    .registers 2

    .prologue
    .line 920
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 4504
    invoke-static {p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4505
    return-void
.end method

.method public getItemAnimator()Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;
    .registers 2

    .prologue
    .line 3183
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 10
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 4517
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 4518
    .local v3, "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-boolean v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_e

    .line 4519
    iget-object v2, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 4538
    :goto_d
    return-object v2

    .line 4522
    :cond_e
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 4524
    :cond_22
    iget-object v2, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    goto :goto_d

    .line 4526
    :cond_25
    iget-object v2, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 4527
    .local v2, "insets":Landroid/graphics/Rect;
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4528
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4529
    .local v0, "decorCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    if-ge v1, v0, :cond_6e

    .line 4530
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4531
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v4, v5, p1, p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 4532
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 4533
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 4534
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 4535
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 4529
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 4537
    :cond_6e
    iput-boolean v7, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_d
.end method

.method public getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .registers 2

    .prologue
    .line 1290
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .registers 2

    .prologue
    .line 2077
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .registers 2

    .prologue
    .line 2067
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method getNanoTime()J
    .registers 3

    .prologue
    .line 5166
    sget-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_9

    .line 5167
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 5169
    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public getOnFlingListener()Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1192
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnFlingListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .registers 2

    .prologue
    .line 4159
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;
    .registers 2

    .prologue
    .line 1302
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .registers 2

    .prologue
    .line 1350
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .registers 2

    .prologue
    .line 891
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .prologue
    .line 10475
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .registers 2

    .prologue
    .line 4639
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    .line 4640
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    .line 4639
    :goto_11
    return v0

    .line 4640
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method initAdapterManager()V
    .registers 3

    .prologue
    .line 791
    new-instance v0, Lorg/telegram/messenger/support/widget/AdapterHelper;

    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$6;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;-><init>(Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    .line 869
    return-void
.end method

.method invalidateGlows()V
    .registers 2

    .prologue
    .line 2238
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2239
    return-void
.end method

.method public invalidateItemDecorations()V
    .registers 3

    .prologue
    .line 4136
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 4145
    :goto_8
    return-void

    .line 4139
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_14

    .line 4140
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4143
    :cond_14
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4144
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    goto :goto_8
.end method

.method isAccessibilityEnabled()Z
    .registers 2

    .prologue
    .line 3105
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isAnimating()Z
    .registers 2

    .prologue
    .line 3941
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isAttachedToWindow()Z
    .registers 2

    .prologue
    .line 2511
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .registers 2

    .prologue
    .line 3139
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isLayoutFrozen()Z
    .registers 2

    .prologue
    .line 1946
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .prologue
    .line 10460
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1529
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_5

    .line 1534
    :goto_4
    return-void

    .line 1532
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1533
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_4
.end method

.method markItemDecorInsetsDirty()V
    .registers 6

    .prologue
    .line 3823
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 3824
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1b

    .line 3825
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3826
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 3824
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3828
    .end local v0    # "child":Landroid/view/View;
    :cond_1b
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 3829
    return-void
.end method

.method markKnownViewsInvalid()V
    .registers 5

    .prologue
    .line 4120
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4121
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_22

    .line 4122
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4123
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 4124
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4121
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 4127
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_22
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4128
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 4129
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 5
    .param p1, "dx"    # I

    .prologue
    .line 4490
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4491
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 4492
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4491
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4494
    :cond_15
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 5
    .param p1, "dy"    # I

    .prologue
    .line 4452
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4453
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 4454
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4453
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4456
    :cond_15
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .registers 8
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 4004
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4005
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_2b

    .line 4006
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4007
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_28

    iget v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_28

    .line 4012
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4013
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4005
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 4016
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_2b
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 4017
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 4018
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .registers 12
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v8, 0x0

    .line 3970
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3972
    .local v0, "childCount":I
    if-ge p1, p2, :cond_26

    .line 3973
    move v5, p1

    .line 3974
    .local v5, "start":I
    move v1, p2

    .line 3975
    .local v1, "end":I
    const/4 v4, -0x1

    .line 3982
    .local v4, "inBetweenOffset":I
    :goto_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v0, :cond_3d

    .line 3983
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3984
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_23

    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v5, :cond_23

    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_2a

    .line 3982
    :cond_23
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3977
    .end local v1    # "end":I
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_26
    move v5, p2

    .line 3978
    .restart local v5    # "start":I
    move v1, p1

    .line 3979
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_c

    .line 3991
    .restart local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_2a
    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_39

    .line 3992
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3997
    :goto_33
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_23

    .line 3994
    :cond_39
    invoke-virtual {v2, v4, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_33

    .line 3999
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_3d
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v6, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 4000
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 4001
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .registers 11
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    const/4 v6, 0x1

    .line 4022
    add-int v3, p1, p2

    .line 4023
    .local v3, "positionEnd":I
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4024
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_3c

    .line 4025
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4026
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 4027
    iget v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_2d

    .line 4033
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4034
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput-boolean v6, v4, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4024
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4035
    :cond_2d
    iget v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_2a

    .line 4040
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v1, v4, v5, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 4042
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput-boolean v6, v4, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_2a

    .line 4046
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_3c
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v4, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 4047
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 4048
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2452
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2453
    iput v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2454
    iput-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    .line 2455
    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v5, :cond_68

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isLayoutRequested()Z

    move-result v5

    if-nez v5, :cond_68

    :goto_13
    iput-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2456
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v3, :cond_1e

    .line 2457
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 2459
    :cond_1e
    iput-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2461
    sget-boolean v3, Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_67

    .line 2463
    sget-object v3, Lorg/telegram/messenger/support/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/GapWorker;

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mGapWorker:Lorg/telegram/messenger/support/widget/GapWorker;

    .line 2464
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mGapWorker:Lorg/telegram/messenger/support/widget/GapWorker;

    if-nez v3, :cond_62

    .line 2465
    new-instance v3, Lorg/telegram/messenger/support/widget/GapWorker;

    invoke-direct {v3}, Lorg/telegram/messenger/support/widget/GapWorker;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mGapWorker:Lorg/telegram/messenger/support/widget/GapWorker;

    .line 2469
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    .line 2470
    .local v0, "display":Landroid/view/Display;
    const/high16 v2, 0x42700000    # 60.0f

    .line 2471
    .local v2, "refreshRate":F
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_52

    if-eqz v0, :cond_52

    .line 2472
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    .line 2473
    .local v1, "displayRefreshRate":F
    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_52

    .line 2474
    move v2, v1

    .line 2477
    .end local v1    # "displayRefreshRate":F
    :cond_52
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mGapWorker:Lorg/telegram/messenger/support/widget/GapWorker;

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v4, v2

    float-to-long v4, v4

    iput-wide v4, v3, Lorg/telegram/messenger/support/widget/GapWorker;->mFrameIntervalNs:J

    .line 2478
    sget-object v3, Lorg/telegram/messenger/support/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mGapWorker:Lorg/telegram/messenger/support/widget/GapWorker;

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2480
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "refreshRate":F
    :cond_62
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mGapWorker:Lorg/telegram/messenger/support/widget/GapWorker;

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/support/widget/GapWorker;->add(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 2482
    :cond_67
    return-void

    :cond_68
    move v3, v4

    .line 2455
    goto :goto_13
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4469
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4481
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 2486
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2487
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_c

    .line 2488
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2490
    :cond_c
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V

    .line 2491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    .line 2492
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1d

    .line 2493
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 2495
    :cond_1d
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2496
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2497
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->onDetach()V

    .line 2499
    sget-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_38

    .line 2501
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mGapWorker:Lorg/telegram/messenger/support/widget/GapWorker;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/GapWorker;->remove(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 2502
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mGapWorker:Lorg/telegram/messenger/support/widget/GapWorker;

    .line 2504
    :cond_38
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 3895
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3897
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3898
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1c

    .line 3899
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 3898
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3901
    :cond_1c
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .registers 2

    .prologue
    .line 3088
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3089
    return-void
.end method

.method onExitLayoutOrScroll()V
    .registers 3

    .prologue
    .line 3092
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3093
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_14

    .line 3098
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3099
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 3100
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    .line 3102
    :cond_14
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2918
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_7

    .line 2949
    :cond_6
    :goto_6
    return v5

    .line 2921
    :cond_7
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v3, :cond_6

    .line 2924
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 2925
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    .line 2927
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 2930
    const/16 v3, 0x9

    .line 2931
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v3

    neg-float v2, v3

    .line 2935
    .local v2, "vScroll":F
    :goto_2a
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 2936
    const/16 v3, 0xa

    .line 2937
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 2942
    .local v0, "hScroll":F
    :goto_38
    cmpl-float v3, v2, v6

    if-nez v3, :cond_40

    cmpl-float v3, v0, v6

    if-eqz v3, :cond_6

    .line 2943
    :cond_40
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollFactor()F

    move-result v1

    .line 2944
    .local v1, "scrollFactor":F
    mul-float v3, v0, v1

    float-to-int v3, v3

    mul-float v4, v2, v1

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_6

    .line 2933
    .end local v0    # "hScroll":F
    .end local v1    # "scrollFactor":F
    .end local v2    # "vScroll":F
    :cond_4e
    const/4 v2, 0x0

    .restart local v2    # "vScroll":F
    goto :goto_2a

    .line 2939
    :cond_50
    const/4 v0, 0x0

    .restart local v0    # "hScroll":F
    goto :goto_38
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2635
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v12, :cond_8

    .line 2638
    const/4 v12, 0x0

    .line 2734
    :goto_7
    return v12

    .line 2640
    :cond_8
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 2641
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->cancelTouch()V

    .line 2642
    const/4 v12, 0x1

    goto :goto_7

    .line 2645
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v12, :cond_1b

    .line 2646
    const/4 v12, 0x0

    goto :goto_7

    .line 2649
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    .line 2650
    .local v3, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    .line 2652
    .local v4, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_39

    .line 2653
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2655
    :cond_39
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2657
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    .line 2658
    .local v1, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2660
    .local v2, "actionIndex":I
    packed-switch v1, :pswitch_data_1ac

    .line 2734
    :cond_4d
    :goto_4d
    :pswitch_4d
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1a9

    const/4 v12, 0x1

    goto :goto_7

    .line 2662
    :pswitch_56
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v12, :cond_61

    .line 2663
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2665
    :cond_61
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    .line 2666
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    .line 2667
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    .line 2669
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a1

    .line 2670
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2671
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    .line 2675
    :cond_a1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    aput v16, v12, v13

    .line 2677
    const/4 v8, 0x0

    .line 2678
    .local v8, "nestedScrollAxis":I
    if-eqz v3, :cond_b6

    .line 2679
    or-int/lit8 v8, v8, 0x1

    .line 2681
    :cond_b6
    if-eqz v4, :cond_ba

    .line 2682
    or-int/lit8 v8, v8, 0x2

    .line 2684
    :cond_ba
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/support/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_4d

    .line 2688
    .end local v8    # "nestedScrollAxis":I
    :pswitch_c0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    .line 2689
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    .line 2690
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_4d

    .line 2694
    :pswitch_f0
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 2695
    .local v7, "index":I
    if-gez v7, :cond_121

    .line 2696
    const-string v12, "RecyclerView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error processing scroll; pointer index for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 2701
    :cond_121
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v10, v12

    .line 2702
    .local v10, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v11, v12

    .line 2703
    .local v11, "y":I
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_4d

    .line 2704
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    sub-int v5, v10, v12

    .line 2705
    .local v5, "dx":I
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    sub-int v6, v11, v12

    .line 2706
    .local v6, "dy":I
    const/4 v9, 0x0

    .line 2707
    .local v9, "startScroll":Z
    if-eqz v3, :cond_167

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    if-le v12, v13, :cond_167

    .line 2708
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    if-gez v5, :cond_18f

    const/4 v12, -0x1

    :goto_160
    mul-int/2addr v12, v14

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    .line 2709
    const/4 v9, 0x1

    .line 2711
    :cond_167
    if-eqz v4, :cond_185

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    if-le v12, v13, :cond_185

    .line 2712
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    if-gez v6, :cond_191

    const/4 v12, -0x1

    :goto_17e
    mul-int/2addr v12, v14

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    .line 2713
    const/4 v9, 0x1

    .line 2715
    :cond_185
    if-eqz v9, :cond_4d

    .line 2716
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_4d

    .line 2708
    :cond_18f
    const/4 v12, 0x1

    goto :goto_160

    .line 2712
    :cond_191
    const/4 v12, 0x1

    goto :goto_17e

    .line 2722
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v7    # "index":I
    .end local v9    # "startScroll":Z
    .end local v10    # "x":I
    .end local v11    # "y":I
    :pswitch_193
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_4d

    .line 2726
    :pswitch_198
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->clear()V

    .line 2727
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopNestedScroll()V

    goto/16 :goto_4d

    .line 2731
    :pswitch_1a4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_4d

    .line 2734
    :cond_1a9
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 2660
    :pswitch_data_1ac
    .packed-switch 0x0
        :pswitch_56
        :pswitch_198
        :pswitch_f0
        :pswitch_1a4
        :pswitch_4d
        :pswitch_c0
        :pswitch_193
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 3807
    const-string v0, "RV OnLayout"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 3808
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    .line 3809
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 3810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3811
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2971
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v4, :cond_c

    .line 2972
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 3038
    :cond_b
    :goto_b
    return-void

    .line 2975
    :cond_c
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-boolean v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    if-eqz v4, :cond_72

    .line 2976
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2977
    .local v2, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2978
    .local v0, "heightMode":I
    if-ne v2, v7, :cond_1f

    if-ne v0, v7, :cond_1f

    move v1, v3

    .line 2980
    .local v1, "skipMeasure":Z
    :cond_1f
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v4, v5, v6, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onMeasure(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V

    .line 2981
    if-nez v1, :cond_b

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_b

    .line 2984
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v4, v3, :cond_37

    .line 2985
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 2989
    :cond_37
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 2990
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput-boolean v3, v4, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 2991
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2994
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 2998
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2999
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .line 3000
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 3001
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 2999
    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3002
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput-boolean v3, v4, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3003
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3005
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    goto :goto_b

    .line 3008
    .end local v0    # "heightMode":I
    .end local v1    # "skipMeasure":Z
    .end local v2    # "widthMode":I
    :cond_72
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v4, :cond_80

    .line 3009
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v3, v4, v5, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onMeasure(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V

    goto :goto_b

    .line 3013
    :cond_80
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v4, :cond_99

    .line 3014
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 3015
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3017
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v4, :cond_bc

    .line 3018
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput-boolean v3, v4, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3024
    :goto_94
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 3025
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3028
    :cond_99
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_c6

    .line 3029
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    iput v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    .line 3033
    :goto_a7
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 3034
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v3, v4, v5, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onMeasure(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V

    .line 3035
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3036
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput-boolean v1, v3, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z

    goto/16 :goto_b

    .line 3021
    :cond_bc
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3022
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput-boolean v1, v3, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_94

    .line 3031
    :cond_c6
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput v1, v3, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    goto :goto_a7
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2442
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2445
    const/4 v0, 0x0

    .line 2447
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_7
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1211
    instance-of v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    if-nez v0, :cond_8

    .line 1212
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1221
    .end local p1    # "state":Landroid/os/Parcelable;
    :cond_7
    :goto_7
    return-void

    .line 1216
    .restart local p1    # "state":Landroid/os/Parcelable;
    :cond_8
    check-cast p1, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    .line 1217
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1218
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_7

    .line 1219
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_7
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 1197
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1198
    .local v0, "state":Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_13

    .line 1199
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->copyFrom(Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;)V

    .line 1206
    :goto_12
    return-object v0

    .line 1200
    :cond_13
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_20

    .line 1201
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_12

    .line 1203
    :cond_20
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_12
.end method

.method public onScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 4601
    return-void
.end method

.method public onScrolled(II)V
    .registers 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 4563
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 3058
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 3059
    if-ne p1, p3, :cond_7

    if-eq p2, p4, :cond_a

    .line 3060
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidateGlows()V

    .line 3063
    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 25
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2749
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    move/from16 v18, v0

    if-nez v18, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    .line 2750
    :cond_10
    const/16 v18, 0x0

    .line 2889
    :goto_12
    return v18

    .line 2752
    :cond_13
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 2753
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->cancelTouch()V

    .line 2754
    const/16 v18, 0x1

    goto :goto_12

    .line 2757
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_2a

    .line 2758
    const/16 v18, 0x0

    goto :goto_12

    .line 2761
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    .line 2762
    .local v5, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v6

    .line 2764
    .local v6, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_50

    .line 2765
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2767
    :cond_50
    const/4 v9, 0x0

    .line 2769
    .local v9, "eventAddedToVelocityTracker":Z
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    .line 2770
    .local v13, "vtev":Landroid/view/MotionEvent;
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 2771
    .local v3, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 2773
    .local v4, "actionIndex":I
    if-nez v3, :cond_75

    .line 2774
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    aput v22, v20, v21

    aput v22, v18, v19

    .line 2776
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2778
    packed-switch v3, :pswitch_data_394

    .line 2884
    :cond_9d
    :goto_9d
    :pswitch_9d
    if-nez v9, :cond_aa

    .line 2885
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2887
    :cond_aa
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 2889
    const/16 v18, 0x1

    goto/16 :goto_12

    .line 2780
    :pswitch_b1
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    .line 2781
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    .line 2782
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    .line 2784
    const/4 v11, 0x0

    .line 2785
    .local v11, "nestedScrollAxis":I
    if-eqz v5, :cond_f8

    .line 2786
    or-int/lit8 v11, v11, 0x1

    .line 2788
    :cond_f8
    if-eqz v6, :cond_fc

    .line 2789
    or-int/lit8 v11, v11, 0x2

    .line 2791
    :cond_fc
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_9d

    .line 2795
    .end local v11    # "nestedScrollAxis":I
    :pswitch_102
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    .line 2796
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    .line 2797
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_9d

    .line 2801
    :pswitch_146
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 2802
    .local v10, "index":I
    if-gez v10, :cond_17e

    .line 2803
    const-string v18, "RecyclerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    const/16 v18, 0x0

    goto/16 :goto_12

    .line 2808
    :cond_17e
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v14, v0

    .line 2809
    .local v14, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2810
    .local v16, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move/from16 v18, v0

    sub-int v7, v18, v14

    .line 2811
    .local v7, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move/from16 v18, v0

    sub-int v8, v18, v16

    .line 2813
    .local v8, "dy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v7, v8, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v18

    if-eqz v18, :cond_22f

    .line 2814
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v7, v7, v18

    .line 2815
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v8, v8, v18

    .line 2816
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2818
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    add-int v20, v20, v21

    aput v20, v18, v19

    .line 2819
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    add-int v20, v20, v21

    aput v20, v18, v19

    .line 2822
    :cond_22f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_283

    .line 2823
    const/4 v12, 0x0

    .line 2824
    .local v12, "startScroll":Z
    if-eqz v5, :cond_25b

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_25b

    .line 2825
    if-lez v7, :cond_2ed

    .line 2826
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v7, v7, v18

    .line 2830
    :goto_25a
    const/4 v12, 0x1

    .line 2832
    :cond_25b
    if-eqz v6, :cond_278

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_278

    .line 2833
    if-lez v8, :cond_2f7

    .line 2834
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v8, v8, v18

    .line 2838
    :goto_277
    const/4 v12, 0x1

    .line 2840
    :cond_278
    if-eqz v12, :cond_283

    .line 2841
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    .line 2845
    .end local v12    # "startScroll":Z
    :cond_283
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9d

    .line 2846
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v18, v14, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    .line 2847
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v18, v16, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    .line 2849
    if-eqz v5, :cond_301

    move/from16 v19, v7

    :goto_2b9
    if-eqz v6, :cond_306

    move/from16 v18, v8

    :goto_2bd
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_2d2

    .line 2853
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2855
    :cond_2d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mGapWorker:Lorg/telegram/messenger/support/widget/GapWorker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9d

    if-nez v7, :cond_2de

    if-eqz v8, :cond_9d

    .line 2856
    :cond_2de
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mGapWorker:Lorg/telegram/messenger/support/widget/GapWorker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7, v8}, Lorg/telegram/messenger/support/widget/GapWorker;->postFromTraversal(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    goto/16 :goto_9d

    .line 2828
    .restart local v12    # "startScroll":Z
    :cond_2ed
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    add-int v7, v7, v18

    goto/16 :goto_25a

    .line 2836
    :cond_2f7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    add-int v8, v8, v18

    goto/16 :goto_277

    .line 2849
    .end local v12    # "startScroll":Z
    :cond_301
    const/16 v18, 0x0

    move/from16 v19, v18

    goto :goto_2b9

    :cond_306
    const/16 v18, 0x0

    goto :goto_2bd

    .line 2862
    .end local v7    # "dx":I
    .end local v8    # "dy":I
    .end local v10    # "index":I
    .end local v14    # "x":I
    .end local v16    # "y":I
    :pswitch_309
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_9d

    .line 2866
    :pswitch_30e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2867
    const/4 v9, 0x1

    .line 2868
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2869
    if-eqz v5, :cond_38a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v19, v0

    .line 2870
    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v18

    move/from16 v0, v18

    neg-float v15, v0

    .line 2871
    .local v15, "xvel":F
    :goto_345
    if-eqz v6, :cond_38c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v19, v0

    .line 2872
    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v18

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v17, v0

    .line 2873
    .local v17, "yvel":F
    :goto_35c
    const/16 v18, 0x0

    cmpl-float v18, v15, v18

    if-nez v18, :cond_368

    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-eqz v18, :cond_37c

    :cond_368
    float-to-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->fling(II)Z

    move-result v18

    if-nez v18, :cond_385

    .line 2874
    :cond_37c
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    .line 2876
    :cond_385
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->resetTouch()V

    goto/16 :goto_9d

    .line 2870
    .end local v15    # "xvel":F
    .end local v17    # "yvel":F
    :cond_38a
    const/4 v15, 0x0

    goto :goto_345

    .line 2872
    .restart local v15    # "xvel":F
    :cond_38c
    const/16 v17, 0x0

    goto :goto_35c

    .line 2880
    .end local v15    # "xvel":F
    :pswitch_38f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_9d

    .line 2778
    :pswitch_data_394
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_30e
        :pswitch_146
        :pswitch_38f
        :pswitch_9d
        :pswitch_102
        :pswitch_309
    .end packed-switch
.end method

.method postAnimationRunner()V
    .registers 2

    .prologue
    .line 3191
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_10

    .line 3192
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 3195
    :cond_10
    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 7
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "animationInfo"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 3701
    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 3702
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v2, :cond_27

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3703
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_27

    .line 3704
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 3705
    .local v0, "key":J
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToOldChangeHolders(JLorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 3707
    .end local v0    # "key":J
    :cond_27
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3708
    return-void
.end method

.method removeAndRecycleViews()V
    .registers 3

    .prologue
    .line 991
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_9

    .line 992
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 998
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1b

    .line 999
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 1000
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 1003
    :cond_1b
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clear()V

    .line 1004
    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1268
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 1269
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    .line 1270
    .local v0, "removed":Z
    if-eqz v0, :cond_19

    .line 1271
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1272
    .local v1, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->unscrapView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 1273
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 1279
    .end local v1    # "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_19
    if-nez v0, :cond_20

    const/4 v2, 0x1

    :goto_1c
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1280
    return v0

    .line 1279
    :cond_20
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 3744
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3745
    .local v0, "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_f

    .line 3746
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3747
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 3753
    :cond_f
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3754
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3755
    return-void

    .line 3748
    :cond_16
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3749
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V
    .registers 4
    .param p1, "decor"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;

    .prologue
    .line 1425
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_b

    .line 1426
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1429
    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1430
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1431
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1433
    :cond_23
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1434
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 1435
    return-void

    .line 1431
    :cond_2a
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public removeOnChildAttachStateChangeListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;

    .prologue
    .line 1104
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1108
    :goto_4
    return-void

    .line 1107
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public removeOnItemTouchListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .prologue
    .line 2579
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2580
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_c

    .line 2581
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2583
    :cond_c
    return-void
.end method

.method public removeOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 1492
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1493
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1495
    :cond_9
    return-void
.end method

.method repositionShadowingViews()V
    .registers 10

    .prologue
    .line 4873
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4874
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_41

    .line 4875
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4876
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4877
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_3e

    iget-object v7, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v7, :cond_3e

    .line 4878
    iget-object v7, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v4, v7, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4879
    .local v4, "shadowingView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 4880
    .local v3, "left":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 4881
    .local v5, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v3, v7, :cond_31

    .line 4882
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v5, v7, :cond_3e

    .line 4884
    :cond_31
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    .line 4885
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v5

    .line 4883
    invoke-virtual {v4, v3, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 4874
    .end local v3    # "left":I
    .end local v4    # "shadowingView":Landroid/view/View;
    .end local v5    # "top":I
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 4889
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v6    # "view":Landroid/view/View;
    :cond_41
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 2402
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v4, p0, v5, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_63

    if-eqz p2, :cond_63

    .line 2403
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2408
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2409
    .local v0, "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    if-eqz v4, :cond_4f

    move-object v2, v0

    .line 2411
    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 2412
    .local v2, "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-boolean v4, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_4f

    .line 2413
    iget-object v1, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 2414
    .local v1, "insets":Landroid/graphics/Rect;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2415
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2416
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2417
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2421
    .end local v1    # "insets":Landroid/graphics/Rect;
    .end local v2    # "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    :cond_4f
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2422
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2423
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v5, :cond_60

    const/4 v3, 0x1

    :cond_60
    invoke-virtual {p0, p1, v4, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 2425
    .end local v0    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_63
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2426
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 2430
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 6
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2739
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2740
    .local v2, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_17

    .line 2741
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2742
    .local v1, "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2740
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2744
    .end local v1    # "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2745
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 3815
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_c

    .line 3816
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3820
    :goto_b
    return-void

    .line 3818
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_b
.end method

.method resumeRequestLayout(Z)V
    .registers 5
    .param p1, "performLayoutChildren"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1865
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    if-ge v0, v1, :cond_8

    .line 1870
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    .line 1872
    :cond_8
    if-nez p1, :cond_c

    .line 1881
    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1883
    :cond_c
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    if-ne v0, v1, :cond_2b

    .line 1885
    if-eqz p1, :cond_25

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_25

    .line 1887
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    .line 1889
    :cond_25
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_2b

    .line 1890
    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1893
    :cond_2b
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    .line 1894
    return-void
.end method

.method saveOldPositions()V
    .registers 5

    .prologue
    .line 3945
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3946
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1f

    .line 3947
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3952
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 3953
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    .line 3946
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3956
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1f
    return-void
.end method

.method public scrollBy(II)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 1571
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_d

    .line 1572
    const-string v2, "RecyclerView"

    const-string v3, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    .end local p1    # "x":I
    .end local p2    # "y":I
    :cond_c
    :goto_c
    return-void

    .line 1576
    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_d
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v3, :cond_c

    .line 1579
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1580
    .local v0, "canScrollHorizontal":Z
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 1581
    .local v1, "canScrollVertical":Z
    if-nez v0, :cond_21

    if-eqz v1, :cond_c

    .line 1582
    :cond_21
    if-eqz v0, :cond_2a

    .end local p1    # "x":I
    :goto_23
    if-eqz v1, :cond_2c

    .end local p2    # "y":I
    :goto_25
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_c

    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_2a
    move p1, v2

    goto :goto_23

    .end local p1    # "x":I
    :cond_2c
    move p2, v2

    goto :goto_25
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1661
    const/4 v3, 0x0

    .local v3, "unconsumedX":I
    const/4 v4, 0x0

    .line 1662
    .local v4, "unconsumedY":I
    const/4 v1, 0x0

    .local v1, "consumedX":I
    const/4 v2, 0x0

    .line 1664
    .local v2, "consumedY":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1665
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_40

    .line 1666
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 1667
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1668
    const-string v0, "RV Scroll"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1669
    if-eqz p1, :cond_26

    .line 1670
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, p1, v5, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v1

    .line 1671
    sub-int v3, p1, v1

    .line 1673
    :cond_26
    if-eqz p2, :cond_34

    .line 1674
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, p2, v5, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v2

    .line 1675
    sub-int v4, p2, v2

    .line 1677
    :cond_34
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1678
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->repositionShadowingViews()V

    .line 1679
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1680
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1682
    :cond_40
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1683
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidate()V

    .line 1686
    :cond_4b
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1688
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v6

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    .line 1689
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v7

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    .line 1690
    if-eqz p3, :cond_75

    .line 1691
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v7

    int-to-float v5, v5

    invoke-virtual {p3, v0, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1693
    :cond_75
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    aget v5, v0, v6

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v6

    add-int/2addr v5, v8

    aput v5, v0, v6

    .line 1694
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    aget v5, v0, v7

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v7

    add-int/2addr v5, v8

    aput v5, v0, v7

    .line 1701
    :cond_8b
    :goto_8b
    if-nez v1, :cond_8f

    if-eqz v2, :cond_92

    .line 1702
    :cond_8f
    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1704
    :cond_92
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 1705
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidate()V

    .line 1707
    :cond_9b
    if-nez v1, :cond_9f

    if-eqz v2, :cond_bb

    :cond_9f
    move v0, v7

    :goto_a0
    return v0

    .line 1695
    :cond_a1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_8b

    .line 1696
    if-eqz p3, :cond_b7

    .line 1697
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v5, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    int-to-float v9, v4

    invoke-direct {p0, v0, v5, v8, v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->pullGlows(FFFF)V

    .line 1699
    :cond_b7
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_8b

    :cond_bb
    move v0, v6

    .line 1707
    goto :goto_a0
.end method

.method public scrollTo(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1565
    const-string v0, "RecyclerView"

    const-string v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    return-void
.end method

.method public scrollToPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1515
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_5

    .line 1526
    :goto_4
    return-void

    .line 1518
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V

    .line 1519
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_14

    .line 1520
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1524
    :cond_14
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1525
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_4
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3167
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3171
    :goto_6
    return-void

    .line 3170
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_6
.end method

.method public setAccessibilityDelegateCompat(Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;)V
    .registers 3
    .param p1, "accessibilityDelegate"    # Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    .prologue
    .line 620
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    .line 621
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 622
    return-void
.end method

.method public setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .registers 4
    .param p1, "adapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .prologue
    const/4 v1, 0x0

    .line 981
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 982
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setAdapterInternal(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;ZZ)V

    .line 983
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 984
    return-void
.end method

.method public setChildDrawingOrderCallback(Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .registers 3
    .param p1, "childDrawingOrderCallback"    # Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    .prologue
    .line 1450
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_5

    .line 1455
    :goto_4
    return-void

    .line 1453
    :cond_5
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1454
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_4

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method setChildImportantForAccessibilityInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)Z
    .registers 4
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "importantForAccessibility"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 10416
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10417
    iput p2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10418
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10419
    const/4 v0, 0x0

    .line 10422
    :goto_e
    return v0

    .line 10421
    :cond_f
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 10422
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public setClipToPadding(Z)V
    .registers 3
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 896
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_7

    .line 897
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidateGlows()V

    .line 899
    :cond_7
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    .line 900
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 901
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_13

    .line 902
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 904
    :cond_13
    return-void
.end method

.method setDataSetChangedAfterLayout()V
    .registers 5

    .prologue
    .line 4097
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_5

    .line 4113
    :goto_4
    return-void

    .line 4100
    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4101
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4102
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_2b

    .line 4103
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4104
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_28

    .line 4105
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4102
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 4108
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_2b
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    .line 4112
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markKnownViewsInvalid()V

    goto :goto_4
.end method

.method public setGlowColor(I)V
    .registers 2
    .param p1, "color"    # I

    .prologue
    .line 490
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->glowColor:I

    .line 491
    return-void
.end method

.method public setHasFixedSize(Z)V
    .registers 2
    .param p1, "hasFixedSize"    # Z

    .prologue
    .line 883
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mHasFixedSize:Z

    .line 884
    return-void
.end method

.method public setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V
    .registers 4
    .param p1, "animator"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    .prologue
    .line 3077
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_f

    .line 3078
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 3079
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->setListener(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3081
    :cond_f
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    .line 3082
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1c

    .line 3083
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->setListener(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3085
    :cond_1c
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 1340
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 1341
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .registers 12
    .param p1, "frozen"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1919
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v2, :cond_21

    .line 1920
    const-string v2, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1921
    if-nez p1, :cond_22

    .line 1922
    iput-boolean v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1923
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_1f

    .line 1924
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 1926
    :cond_1f
    iput-boolean v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1937
    :cond_21
    :goto_21
    return-void

    .line 1928
    :cond_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1929
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1931
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/support/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1932
    iput-boolean v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1933
    iput-boolean v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 1934
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V

    goto :goto_21
.end method

.method public setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V
    .registers 5
    .param p1, "layout"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .prologue
    const/4 v2, 0x0

    .line 1133
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_6

    .line 1171
    :goto_5
    return-void

    .line 1136
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V

    .line 1139
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_6d

    .line 1141
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_16

    .line 1142
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1144
    :cond_16
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 1145
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 1146
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clear()V

    .line 1148
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_34

    .line 1149
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 1151
    :cond_34
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1152
    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .line 1157
    :goto_3b
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1158
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .line 1159
    if-eqz p1, :cond_81

    .line 1160
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_73

    .line 1161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1154
    :cond_6d
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clear()V

    goto :goto_3b

    .line 1164
    :cond_73
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1165
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_81

    .line 1166
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1169
    :cond_81
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 1170
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    goto/16 :goto_5
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 10455
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 10456
    return-void
.end method

.method public setOnFlingListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;)V
    .registers 2
    .param p1, "onFlingListener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1182
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnFlingListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;

    .line 1183
    return-void
.end method

.method public setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V
    .registers 2
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1467
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    .line 1468
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .registers 2
    .param p1, "preserveFocusAfterLayout"    # Z

    .prologue
    .line 4177
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 4178
    return-void
.end method

.method public setRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;)V
    .registers 3
    .param p1, "pool"    # Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    .prologue
    .line 1314
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->setRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;)V

    .line 1315
    return-void
.end method

.method public setRecyclerListener(Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;)V
    .registers 2
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

    .prologue
    .line 1060
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecyclerListener:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

    .line 1061
    return-void
.end method

.method setScrollState(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 1354
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_5

    .line 1366
    :goto_4
    return-void

    .line 1361
    :cond_5
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    .line 1362
    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    .line 1363
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScrollersInternal()V

    .line 1365
    :cond_d
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    goto :goto_4
.end method

.method public setScrollingTouchSlop(I)V
    .registers 6
    .param p1, "slopConstant"    # I

    .prologue
    .line 933
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 934
    .local v0, "vc":Landroid/view/ViewConfiguration;
    packed-switch p1, :pswitch_data_38

    .line 936
    const-string v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :pswitch_29
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    .line 947
    :goto_2f
    return-void

    .line 944
    :pswitch_30
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    goto :goto_2f

    .line 934
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_29
        :pswitch_30
    .end packed-switch
.end method

.method public setTopGlowOffset(I)V
    .registers 2
    .param p1, "offset"    # I

    .prologue
    .line 486
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->topGlowOffset:I

    .line 487
    return-void
.end method

.method public setViewCacheExtension(Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;)V
    .registers 3
    .param p1, "extension"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

    .prologue
    .line 1325
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->setViewCacheExtension(Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;)V

    .line 1326
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3151
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3152
    const/4 v0, 0x0

    .line 3153
    .local v0, "type":I
    if-eqz p1, :cond_d

    .line 3154
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    .line 3156
    :cond_d
    if-nez v0, :cond_10

    .line 3157
    const/4 v0, 0x0

    .line 3159
    :cond_10
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3160
    const/4 v1, 0x1

    .line 3162
    .end local v0    # "type":I
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public smoothScrollBy(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1956
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 1957
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1968
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    .line 1969
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_b
    :goto_b
    return-void

    .line 1973
    :cond_c
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_b

    .line 1976
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1977
    const/4 p1, 0x0

    .line 1979
    :cond_19
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1980
    const/4 p2, 0x0

    .line 1982
    :cond_22
    if-nez p1, :cond_26

    if-eqz p2, :cond_b

    .line 1983
    :cond_26
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    goto :goto_b
.end method

.method public smoothScrollToPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1552
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_5

    .line 1561
    :goto_4
    return-void

    .line 1555
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_11

    .line 1556
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1560
    :cond_11
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)V

    goto :goto_4
.end method

.method public startNestedScroll(I)Z
    .registers 3
    .param p1, "axes"    # I

    .prologue
    .line 10465
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .registers 2

    .prologue
    .line 10470
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 10471
    return-void
.end method

.method public stopScroll()V
    .registers 2

    .prologue
    .line 2047
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    .line 2048
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScrollersInternal()V

    .line 2049
    return-void
.end method

.method public swapAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Z)V
    .registers 4
    .param p1, "adapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .prologue
    .line 965
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 966
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->setAdapterInternal(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;ZZ)V

    .line 967
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 968
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 969
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .registers 11
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 4057
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 4058
    .local v1, "childCount":I
    add-int v4, p1, p2

    .line 4060
    .local v4, "positionEnd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v1, :cond_39

    .line 4061
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4062
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4063
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 4060
    :cond_1d
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4066
    :cond_20
    iget v5, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_1d

    iget v5, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v4, :cond_1d

    .line 4069
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4070
    invoke-virtual {v2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 4072
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_1d

    .line 4075
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_39
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 4076
    return-void
.end method

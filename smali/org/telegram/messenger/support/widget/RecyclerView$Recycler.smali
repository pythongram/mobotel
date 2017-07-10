.class public final Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

.field private mRequestedCacheMax:I

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

.field mViewCacheMax:I

.field final synthetic this$0:Lorg/telegram/messenger/support/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    const/4 v1, 0x2

    .line 5186
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 5188
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 5192
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 5193
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 5195
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5196
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method private attachAccessibilityDelegate(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 5583
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5584
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_12

    .line 5586
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 5589
    :cond_12
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 5590
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    .line 5591
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-result-object v0

    .line 5590
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 5594
    :cond_23
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .registers 8
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "invalidateThis"    # Z

    .prologue
    const/4 v4, 0x4

    .line 5603
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_7
    if-ltz v0, :cond_1a

    .line 5604
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5605
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_17

    .line 5606
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "view":Landroid/view/View;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 5603
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 5609
    :cond_1a
    if-nez p2, :cond_1d

    .line 5621
    :goto_1c
    return-void

    .line 5613
    :cond_1d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_2b

    .line 5614
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5615
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1c

    .line 5617
    :cond_2b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    .line 5618
    .local v2, "visibility":I
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5619
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1c
.end method

.method private invalidateDisplayListInt(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 5597
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    .line 5598
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 5600
    :cond_e
    return-void
.end method

.method private tryBindViewHolderByDeadline(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIJ)Z
    .registers 16
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "offsetPosition"    # I
    .param p3, "position"    # I
    .param p4, "deadlineNs"    # J

    .prologue
    .line 5292
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iput-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 5293
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 5294
    .local v1, "viewType":I
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    .line 5295
    .local v2, "startBindNs":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p4, v4

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    move-wide v4, p4

    .line 5296
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->willBindInTime(IJJ)Z

    move-result v0

    if-nez v0, :cond_22

    .line 5298
    const/4 v0, 0x0

    .line 5307
    :goto_21
    return v0

    .line 5300
    :cond_22
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->bindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    .line 5301
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getNanoTime()J

    move-result-wide v6

    .line 5302
    .local v6, "endBindNs":J
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    sub-long v8, v6, v2

    invoke-virtual {v0, v4, v8, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->factorInBindTime(IJ)V

    .line 5303
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 5304
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 5305
    iput p3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 5307
    :cond_4b
    const/4 v0, 0x1

    goto :goto_21
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V
    .registers 5
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "dispatchRecycled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5789
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 5790
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 5791
    if-eqz p2, :cond_e

    .line 5792
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->dispatchViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 5794
    :cond_e
    iput-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 5795
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->putRecycledView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 5796
    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x1

    .line 5326
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5327
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-nez v1, :cond_f

    .line 5328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5332
    :cond_f
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    .line 5333
    .local v2, "offsetPosition":I
    if-ltz v2, :cond_23

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt v2, v0, :cond_58

    .line 5334
    :cond_23
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistency detected. Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ").state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .line 5336
    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5338
    :cond_58
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIJ)Z

    .line 5340
    iget-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 5342
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_87

    .line 5343
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 5344
    .local v7, "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5352
    :goto_77
    iput-boolean v8, v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 5353
    iput-object v1, v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5354
    iget-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_a1

    move v0, v8

    :goto_84
    iput-boolean v0, v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 5355
    return-void

    .line 5345
    .end local v7    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    :cond_87
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 5346
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 5347
    .restart local v7    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_77

    .end local v7    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    :cond_9d
    move-object v7, v6

    .line 5349
    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .restart local v7    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    goto :goto_77

    .line 5354
    :cond_a1
    const/4 v0, 0x0

    goto :goto_84
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 5209
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5210
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 5211
    return-void
.end method

.method clearOldPositions()V
    .registers 7

    .prologue
    .line 6173
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6174
    .local v0, "cachedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_17

    .line 6175
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 6176
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6174
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 6178
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_17
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6179
    .local v4, "scrapCount":I
    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v4, :cond_2e

    .line 6180
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6179
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 6182
    :cond_2e
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v5, :cond_49

    .line 6183
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6184
    .local v1, "changedScrapCount":I
    const/4 v3, 0x0

    :goto_39
    if-ge v3, v1, :cond_49

    .line 6185
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6184
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 6188
    .end local v1    # "changedScrapCount":I
    :cond_49
    return-void
.end method

.method clearScrap()V
    .registers 2

    .prologue
    .line 5866
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5867
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 5868
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5870
    :cond_e
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 5376
    if-ltz p1, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_37

    .line 5377
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .line 5378
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5380
    :cond_37
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_42

    .line 5383
    .end local p1    # "position":I
    :goto_41
    return p1

    .restart local p1    # "position":I
    :cond_42
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result p1

    goto :goto_41
.end method

.method dispatchViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 6017
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecyclerListener:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

    if-eqz v0, :cond_d

    .line 6018
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecyclerListener:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;->onViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 6020
    :cond_d
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1a

    .line 6021
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 6023
    :cond_1a
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    if-eqz v0, :cond_27

    .line 6024
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->removeViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 6027
    :cond_27
    return-void
.end method

.method getChangedScrapViewForPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 13
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x20

    .line 5875
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "changedScrapSize":I
    if-nez v0, :cond_11

    .end local v0    # "changedScrapSize":I
    :cond_f
    move-object v1, v6

    .line 5900
    :goto_10
    return-object v1

    .line 5879
    .restart local v0    # "changedScrapSize":I
    :cond_11
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_2f

    .line 5880
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5881
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_2c

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_2c

    .line 5882
    invoke-virtual {v1, v10}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_10

    .line 5879
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 5887
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_2f
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_75

    .line 5888
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v7, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v3

    .line 5889
    .local v3, "offsetPosition":I
    if-lez v3, :cond_75

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-ge v3, v7, :cond_75

    .line 5890
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 5891
    .local v4, "id":J
    const/4 v2, 0x0

    :goto_56
    if-ge v2, v0, :cond_75

    .line 5892
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5893
    .restart local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_72

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-nez v7, :cond_72

    .line 5894
    invoke-virtual {v1, v10}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_10

    .line 5891
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v3    # "offsetPosition":I
    .end local v4    # "id":J
    :cond_75
    move-object v1, v6

    .line 5900
    goto :goto_10
.end method

.method getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;
    .registers 2

    .prologue
    .line 6121
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_b

    .line 6122
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    .line 6124
    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method getScrapCount()I
    .registers 2

    .prologue
    .line 5858
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5240
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method getScrapOrCachedViewForId(JIZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 14
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "dryRun"    # Z

    .prologue
    const/4 v4, 0x0

    .line 5965
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5966
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_5a

    .line 5967
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5968
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-nez v5, :cond_57

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v5

    if-nez v5, :cond_57

    .line 5969
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    if-ne p3, v5, :cond_43

    .line 5970
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5971
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 5980
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_42

    .line 5981
    const/4 v4, 0x2

    const/16 v5, 0xe

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6013
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_42
    :goto_42
    return-object v2

    .line 5986
    .restart local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_43
    if-nez p4, :cond_57

    .line 5990
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5991
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5992
    iget-object v5, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 5966
    :cond_57
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 5998
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_5a
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5999
    .local v0, "cacheSize":I
    add-int/lit8 v3, v0, -0x1

    :goto_62
    if-ltz v3, :cond_8c

    .line 6000
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 6001
    .restart local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-nez v5, :cond_89

    .line 6002
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    if-ne p3, v5, :cond_82

    .line 6003
    if-nez p4, :cond_42

    .line 6004
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_42

    .line 6007
    :cond_82
    if-nez p4, :cond_89

    .line 6008
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    move-object v2, v4

    .line 6009
    goto :goto_42

    .line 5999
    :cond_89
    add-int/lit8 v3, v3, -0x1

    goto :goto_62

    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_8c
    move-object v2, v4

    .line 6013
    goto :goto_42
.end method

.method getScrapOrHiddenOrCachedHolderForPosition(IZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 13
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .prologue
    .line 5911
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5914
    .local v4, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v4, :cond_3a

    .line 5915
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5916
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_37

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_37

    .line 5917
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_37

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez v7, :cond_31

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_37

    .line 5918
    :cond_31
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5960
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_36
    :goto_36
    return-object v1

    .line 5914
    .restart local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5923
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_3a
    if-nez p2, :cond_86

    .line 5924
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->findHiddenNonRemovedView(I)Landroid/view/View;

    move-result-object v6

    .line 5925
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_86

    .line 5928
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 5929
    .local v5, "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->unhide(Landroid/view/View;)V

    .line 5930
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 5931
    .local v3, "layoutIndex":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_75

    .line 5932
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 5935
    :cond_75
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->detachViewFromParent(I)V

    .line 5936
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 5937
    const/16 v7, 0x2020

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    move-object v1, v5

    .line 5939
    goto :goto_36

    .line 5944
    .end local v3    # "layoutIndex":I
    .end local v5    # "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v6    # "view":Landroid/view/View;
    :cond_86
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5945
    .local v0, "cacheSize":I
    const/4 v2, 0x0

    :goto_8d
    if-ge v2, v0, :cond_ae

    .line 5946
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5949
    .restart local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_ab

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_ab

    .line 5950
    if-nez p2, :cond_36

    .line 5951
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_36

    .line 5945
    :cond_ab
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 5960
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_ae
    const/4 v1, 0x0

    goto :goto_36
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 5862
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 5401
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .prologue
    .line 5405
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method markItemDecorInsetsDirty()V
    .registers 6

    .prologue
    .line 6191
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6192
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_21

    .line 6193
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 6194
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    iget-object v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 6195
    .local v3, "layoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    if-eqz v3, :cond_1e

    .line 6196
    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6192
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 6199
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v3    # "layoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    :cond_21
    return-void
.end method

.method markKnownViewsInvalid()V
    .registers 5

    .prologue
    .line 6157
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 6158
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6159
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v0, :cond_31

    .line 6160
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 6161
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_2b

    .line 6162
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6163
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 6159
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 6168
    .end local v0    # "cachedCount":I
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v2    # "i":I
    :cond_2e
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 6170
    :cond_31
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .registers 7
    .param p1, "insertedAt"    # I
    .param p2, "count"    # I

    .prologue
    .line 6065
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6066
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1e

    .line 6067
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 6068
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1b

    iget v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_1b

    .line 6073
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6066
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 6076
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1e
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .registers 11
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v7, 0x0

    .line 6037
    if-ge p1, p2, :cond_24

    .line 6038
    move v5, p1

    .line 6039
    .local v5, "start":I
    move v1, p2

    .line 6040
    .local v1, "end":I
    const/4 v4, -0x1

    .line 6046
    .local v4, "inBetweenOffset":I
    :goto_6
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6047
    .local v0, "cachedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v0, :cond_36

    .line 6048
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 6049
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_21

    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v5, :cond_21

    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_28

    .line 6047
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 6042
    .end local v0    # "cachedCount":I
    .end local v1    # "end":I
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_24
    move v5, p2

    .line 6043
    .restart local v5    # "start":I
    move v1, p1

    .line 6044
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_6

    .line 6052
    .restart local v0    # "cachedCount":I
    .restart local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_28
    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_32

    .line 6053
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_21

    .line 6055
    :cond_32
    invoke-virtual {v2, v4, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_21

    .line 6062
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_36
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .registers 9
    .param p1, "removedFrom"    # I
    .param p2, "count"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    .line 6085
    add-int v3, p1, p2

    .line 6086
    .local v3, "removedEnd":I
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6087
    .local v0, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_2e

    .line 6088
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 6089
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1e

    .line 6090
    iget v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_21

    .line 6096
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6087
    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 6097
    :cond_21
    iget v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_1e

    .line 6099
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6100
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1e

    .line 6104
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_2e
    return-void
.end method

.method onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Z)V
    .registers 5
    .param p1, "oldAdapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .prologue
    .line 6031
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clear()V

    .line 6032
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Z)V

    .line 6033
    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5804
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5805
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$802(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .line 5806
    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$902(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)Z

    .line 5807
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5808
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 5809
    return-void
.end method

.method recycleAndClearCachedViews()V
    .registers 4

    .prologue
    .line 5658
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5659
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_10

    .line 5660
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5659
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 5662
    :cond_10
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5663
    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z
    invoke-static {}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$600()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 5664
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 5666
    :cond_22
    return-void
.end method

.method recycleCachedViewAt(I)V
    .registers 4
    .param p1, "cachedViewIndex"    # I

    .prologue
    .line 5683
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5687
    .local v0, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V

    .line 5688
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5689
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5636
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5637
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5638
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5640
    :cond_10
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 5641
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 5645
    :cond_19
    :goto_19
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 5646
    return-void

    .line 5642
    :cond_1d
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5643
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_19
.end method

.method recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 15
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5697
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_40

    .line 5698
    :cond_10
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 5700
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isAttached:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5701
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eqz v12, :cond_34

    move v8, v9

    :cond_34
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 5704
    :cond_40
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v10

    if-eqz v10, :cond_5f

    .line 5705
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5709
    :cond_5f
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 5710
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5715
    :cond_6d
    # invokes: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$700(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v7

    .line 5716
    .local v7, "transientStatePreventsRecycling":Z
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v10, :cond_f7

    if-eqz v7, :cond_f7

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .line 5718
    invoke-virtual {v10, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v10

    if-eqz v10, :cond_f7

    move v4, v9

    .line 5719
    .local v4, "forceRecycle":Z
    :goto_84
    const/4 v1, 0x0

    .line 5720
    .local v1, "cached":Z
    const/4 v5, 0x0

    .line 5725
    .local v5, "recycled":Z
    if-nez v4, :cond_8e

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v10

    if-eqz v10, :cond_e6

    .line 5726
    :cond_8e
    iget v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lez v10, :cond_e0

    const/16 v10, 0x20e

    .line 5727
    invoke-virtual {p1, v10}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    if-nez v10, :cond_e0

    .line 5732
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5733
    .local v3, "cachedViewSize":I
    iget v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lt v3, v10, :cond_ab

    if-lez v3, :cond_ab

    .line 5734
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5735
    add-int/lit8 v3, v3, -0x1

    .line 5738
    :cond_ab
    move v6, v3

    .line 5739
    .local v6, "targetCacheIndex":I
    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z
    invoke-static {}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$600()Z

    move-result v8

    if-eqz v8, :cond_da

    if-lez v3, :cond_da

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v8, v8, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v10, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5741
    invoke-virtual {v8, v10}, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v8

    if-nez v8, :cond_da

    .line 5743
    add-int/lit8 v0, v3, -0x1

    .line 5744
    .local v0, "cacheIndex":I
    :goto_c2
    if-ltz v0, :cond_d8

    .line 5745
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget v2, v8, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5746
    .local v2, "cachedPos":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v8, v8, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v8

    if-nez v8, :cond_f9

    .line 5751
    .end local v2    # "cachedPos":I
    :cond_d8
    add-int/lit8 v6, v0, 0x1

    .line 5753
    .end local v0    # "cacheIndex":I
    :cond_da
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5754
    const/4 v1, 0x1

    .line 5756
    .end local v3    # "cachedViewSize":I
    .end local v6    # "targetCacheIndex":I
    :cond_e0
    if-nez v1, :cond_e6

    .line 5757
    invoke-virtual {p0, p1, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V

    .line 5758
    const/4 v5, 0x1

    .line 5774
    :cond_e6
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v8, v8, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v8, p1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->removeViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 5775
    if-nez v1, :cond_f6

    if-nez v5, :cond_f6

    if-eqz v7, :cond_f6

    .line 5776
    const/4 v8, 0x0

    iput-object v8, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 5778
    :cond_f6
    return-void

    .end local v1    # "cached":Z
    .end local v4    # "forceRecycle":Z
    .end local v5    # "recycled":Z
    :cond_f7
    move v4, v8

    .line 5718
    goto :goto_84

    .line 5749
    .restart local v0    # "cacheIndex":I
    .restart local v1    # "cached":Z
    .restart local v2    # "cachedPos":I
    .restart local v3    # "cachedViewSize":I
    .restart local v4    # "forceRecycle":Z
    .restart local v5    # "recycled":Z
    .restart local v6    # "targetCacheIndex":I
    :cond_f9
    add-int/lit8 v0, v0, -0x1

    .line 5750
    goto :goto_c2
.end method

.method recycleViewInternal(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5654
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 5655
    return-void
.end method

.method scrapView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5821
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5822
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 5823
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 5824
    :cond_1a
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_38

    .line 5825
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5829
    :cond_38
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setScrapContainer(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Z)V

    .line 5830
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5838
    :goto_41
    return-void

    .line 5832
    :cond_42
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_4d

    .line 5833
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5835
    :cond_4d
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setScrapContainer(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Z)V

    .line 5836
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41
.end method

.method setAdapterPositionsAsUnknown()V
    .registers 5

    .prologue
    .line 6147
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6148
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1b

    .line 6149
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 6150
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_18

    .line 6151
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6148
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 6154
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1b
    return-void
.end method

.method setRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;)V
    .registers 4
    .param p1, "pool"    # Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    .prologue
    .line 6111
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    if-eqz v0, :cond_9

    .line 6112
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 6114
    :cond_9
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    .line 6115
    if-eqz p1, :cond_18

    .line 6116
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->attach(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 6118
    :cond_18
    return-void
.end method

.method setViewCacheExtension(Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;)V
    .registers 2
    .param p1, "extension"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

    .prologue
    .line 6107
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheExtension:Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

    .line 6108
    return-void
.end method

.method public setViewCacheSize(I)V
    .registers 2
    .param p1, "viewCount"    # I

    .prologue
    .line 5219
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5220
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 5221
    return-void
.end method

.method tryGetViewHolderForPositionByDeadline(IZJ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 28
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z
    .param p3, "deadlineNs"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 5429
    if-ltz p1, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_4b

    .line 5430
    :cond_10
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid item position "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "). Item count:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v9, v9, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .line 5431
    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5433
    :cond_4b
    const/16 v16, 0x0

    .line 5434
    .local v16, "fromScrapOrHiddenOrCache":Z
    const/4 v7, 0x0

    .line 5436
    .local v7, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 5437
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 5438
    if-eqz v7, :cond_e6

    const/16 v16, 0x1

    .line 5441
    :cond_62
    :goto_62
    if-nez v7, :cond_91

    .line 5442
    invoke-virtual/range {p0 .. p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getScrapOrHiddenOrCachedHolderForPosition(IZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 5443
    if-eqz v7, :cond_91

    .line 5444
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_f4

    .line 5446
    if-nez p2, :cond_90

    .line 5449
    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5450
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 5451
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v6, v7, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5452
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 5456
    :cond_8b
    :goto_8b
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 5458
    :cond_90
    const/4 v7, 0x0

    .line 5464
    :cond_91
    :goto_91
    if-nez v7, :cond_1d1

    .line 5465
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v8

    .line 5466
    .local v8, "offsetPosition":I
    if-ltz v8, :cond_ad

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-lt v8, v2, :cond_f7

    .line 5467
    :cond_ad
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inconsistency detected. Invalid item position "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "(offset:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ").state:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v9, v9, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .line 5469
    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5438
    .end local v8    # "offsetPosition":I
    :cond_e6
    const/16 v16, 0x0

    goto/16 :goto_62

    .line 5453
    :cond_ea
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 5454
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_8b

    .line 5460
    :cond_f4
    const/16 v16, 0x1

    goto :goto_91

    .line 5472
    .restart local v8    # "offsetPosition":I
    :cond_f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    .line 5474
    .local v3, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_125

    .line 5475
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v10, v11, v3, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getScrapOrCachedViewForId(JIZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 5477
    if-eqz v7, :cond_125

    .line 5479
    iput v8, v7, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5480
    const/16 v16, 0x1

    .line 5483
    :cond_125
    if-nez v7, :cond_15d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheExtension:Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

    if-eqz v2, :cond_15d

    .line 5486
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheExtension:Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

    .line 5487
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v22

    .line 5488
    .local v22, "view":Landroid/view/View;
    if-eqz v22, :cond_15d

    .line 5489
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 5490
    if-nez v7, :cond_14f

    .line 5491
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5493
    :cond_14f
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 5494
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5500
    .end local v22    # "view":Landroid/view/View;
    :cond_15d
    if-nez v7, :cond_175

    .line 5505
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 5506
    if-eqz v7, :cond_175

    .line 5507
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5508
    sget-boolean v2, Lorg/telegram/messenger/support/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v2, :cond_175

    .line 5509
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    :cond_175
    move-object/from16 v17, v7

    .line 5513
    .end local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .local v17, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-nez v17, :cond_2aa

    .line 5514
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    .line 5515
    .local v4, "start":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v2, p3, v10

    if-eqz v2, :cond_19b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    move-wide/from16 v6, p3

    .line 5516
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->willCreateInTime(IJJ)Z

    move-result v2

    if-nez v2, :cond_19b

    .line 5518
    const/4 v7, 0x0

    move-object v2, v7

    move-object/from16 v7, v17

    .line 5579
    .end local v3    # "type":I
    .end local v4    # "start":J
    .end local v8    # "offsetPosition":I
    .end local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :goto_19a
    return-object v2

    .line 5520
    .end local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v3    # "type":I
    .restart local v4    # "start":J
    .restart local v8    # "offsetPosition":I
    .restart local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_19b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v2, v6, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 5521
    .end local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z
    invoke-static {}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$600()Z

    move-result v2

    if-eqz v2, :cond_1c0

    .line 5523
    iget-object v2, v7, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView;

    move-result-object v19

    .line 5524
    .local v19, "innerView":Lorg/telegram/messenger/support/widget/RecyclerView;
    if-eqz v19, :cond_1c0

    .line 5525
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v7, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5529
    .end local v19    # "innerView":Lorg/telegram/messenger/support/widget/RecyclerView;
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getNanoTime()J

    move-result-wide v14

    .line 5530
    .local v14, "end":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    sub-long v10, v14, v4

    invoke-virtual {v2, v3, v10, v11}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->factorInCreateTime(IJ)V

    .line 5540
    .end local v3    # "type":I
    .end local v4    # "start":J
    .end local v8    # "offsetPosition":I
    .end local v14    # "end":J
    :cond_1d1
    :goto_1d1
    if-eqz v16, :cond_21a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_21a

    const/16 v2, 0x2000

    .line 5541
    invoke-virtual {v7, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v2

    if-eqz v2, :cond_21a

    .line 5542
    const/4 v2, 0x0

    const/16 v6, 0x2000

    invoke-virtual {v7, v2, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5543
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_21a

    .line 5545
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v13

    .line 5546
    .local v13, "changeFlags":I
    or-int/lit16 v13, v13, 0x1000

    .line 5547
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .line 5548
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v9

    .line 5547
    invoke-virtual {v2, v6, v7, v13, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v18

    .line 5549
    .local v18, "info":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v7, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 5553
    .end local v13    # "changeFlags":I
    .end local v18    # "info":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_21a
    const/4 v12, 0x0

    .line 5554
    .local v12, "bound":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-eqz v2, :cond_25a

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_25a

    .line 5556
    move/from16 v0, p1

    iput v0, v7, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 5566
    :cond_231
    :goto_231
    iget-object v2, v7, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 5568
    .local v20, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v20, :cond_283

    .line 5569
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 5570
    .local v21, "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v2, v7, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5577
    :goto_24a
    move-object/from16 v0, v21

    iput-object v7, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5578
    if-eqz v16, :cond_2a8

    if-eqz v12, :cond_2a8

    const/4 v2, 0x1

    :goto_253
    move-object/from16 v0, v21

    iput-boolean v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    move-object v2, v7

    .line 5579
    goto/16 :goto_19a

    .line 5557
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    :cond_25a
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_26c

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v2

    if-nez v2, :cond_26c

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_231

    .line 5562
    :cond_26c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v8

    .restart local v8    # "offsetPosition":I
    move-object/from16 v6, p0

    move/from16 v9, p1

    move-wide/from16 v10, p3

    .line 5563
    invoke-direct/range {v6 .. v11}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIJ)Z

    move-result v12

    goto :goto_231

    .line 5571
    .end local v8    # "offsetPosition":I
    .restart local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_283
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2a3

    .line 5572
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 5573
    .restart local v21    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v2, v7, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24a

    .end local v21    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    :cond_2a3
    move-object/from16 v21, v20

    .line 5575
    check-cast v21, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .restart local v21    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    goto :goto_24a

    .line 5578
    :cond_2a8
    const/4 v2, 0x0

    goto :goto_253

    .end local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v12    # "bound":Z
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .restart local v3    # "type":I
    .restart local v8    # "offsetPosition":I
    .restart local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_2aa
    move-object/from16 v7, v17

    .end local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    goto/16 :goto_1d1
.end method

.method unscrapView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 5847
    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$900(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5848
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5852
    :goto_b
    const/4 v0, 0x0

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    invoke-static {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$802(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .line 5853
    const/4 v0, 0x0

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z
    invoke-static {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$902(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)Z

    .line 5854
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5855
    return-void

    .line 5850
    :cond_17
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method updateViewCacheSize()V
    .registers 5

    .prologue
    .line 5224
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget v0, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 5225
    .local v0, "extraCache":I
    :goto_c
    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 5228
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 5229
    .local v1, "i":I
    :goto_19
    if-ltz v1, :cond_2d

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-le v2, v3, :cond_2d

    .line 5230
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5229
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 5224
    .end local v0    # "extraCache":I
    .end local v1    # "i":I
    :cond_2b
    const/4 v0, 0x0

    goto :goto_c

    .line 5232
    .restart local v0    # "extraCache":I
    .restart local v1    # "i":I
    :cond_2d
    return-void
.end method

.method validateViewHolderForOffsetPosition(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 10
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5254
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 5259
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    .line 5275
    :cond_10
    :goto_10
    return v1

    .line 5261
    :cond_11
    iget v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v3, :cond_21

    iget v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-lt v3, v4, :cond_3a

    .line 5262
    :cond_21
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5265
    :cond_3a
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_56

    .line 5267
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    iget v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 5268
    .local v0, "type":I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v0, v3, :cond_56

    move v1, v2

    .line 5269
    goto :goto_10

    .line 5272
    .end local v0    # "type":I
    :cond_56
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 5273
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    iget v6, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_10

    move v1, v2

    goto :goto_10
.end method

.method viewRangeUpdate(II)V
    .registers 9
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 6128
    add-int v4, p1, p2

    .line 6129
    .local v4, "positionEnd":I
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6130
    .local v0, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_29

    .line 6131
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 6132
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-nez v1, :cond_19

    .line 6130
    :cond_16
    :goto_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 6136
    :cond_19
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    .line 6137
    .local v3, "pos":I
    if-lt v3, p1, :cond_16

    if-ge v3, v4, :cond_16

    .line 6138
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6139
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_16

    .line 6144
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v3    # "pos":I
    :cond_29
    return-void
.end method

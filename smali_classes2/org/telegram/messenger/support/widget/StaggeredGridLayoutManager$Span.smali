.class Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# static fields
.field static final INVALID_LINE:I = -0x80000000


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;I)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;
    .param p2, "index"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 2425
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2420
    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2421
    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2422
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2426
    iput p2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 2427
    return-void
.end method


# virtual methods
.method appendToSpan(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v3, -0x80000000

    .line 2510
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2511
    .local v0, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iput-object p0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    .line 2512
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2513
    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2514
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 2515
    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2517
    :cond_1a
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2518
    :cond_26
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2520
    :cond_33
    return-void
.end method

.method cacheReferenceLineAndClear(ZI)V
    .registers 6
    .param p1, "reverseLayout"    # Z
    .param p2, "offset"    # I

    .prologue
    const/high16 v2, -0x80000000

    .line 2525
    if-eqz p1, :cond_e

    .line 2526
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    .line 2530
    .local v0, "reference":I
    :goto_8
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 2531
    if-ne v0, v2, :cond_13

    .line 2542
    :cond_d
    :goto_d
    return-void

    .line 2528
    .end local v0    # "reference":I
    :cond_e
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    .restart local v0    # "reference":I
    goto :goto_8

    .line 2534
    :cond_13
    if-eqz p1, :cond_1f

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-lt v0, v1, :cond_d

    :cond_1f
    if-nez p1, :cond_2b

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2535
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    if-gt v0, v1, :cond_d

    .line 2538
    :cond_2b
    if-eq p2, v2, :cond_2e

    .line 2539
    add-int/2addr v0, p2

    .line 2541
    :cond_2e
    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_d
.end method

.method calculateCachedEnd()V
    .registers 6

    .prologue
    .line 2475
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2476
    .local v0, "endView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    .line 2477
    .local v2, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2478
    iget-boolean v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_40

    .line 2479
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2480
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    .line 2481
    .local v1, "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v1, :cond_40

    iget v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_40

    .line 2482
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2485
    .end local v1    # "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_40
    return-void
.end method

.method calculateCachedStart()V
    .registers 6

    .prologue
    .line 2441
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2442
    .local v2, "startView":Landroid/view/View;
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2443
    .local v1, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2444
    iget-boolean v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_39

    .line 2445
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2446
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2447
    .local v0, "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v0, :cond_39

    iget v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_39

    .line 2448
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2451
    .end local v0    # "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_39
    return-void
.end method

.method clear()V
    .registers 2

    .prologue
    .line 2545
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2546
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->invalidateCache()V

    .line 2547
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2548
    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2610
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2611
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2610
    :goto_14
    return v0

    .line 2611
    :cond_15
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2612
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_14
.end method

.method public findFirstVisibleItemPosition()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2604
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2605
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2604
    :goto_14
    return v0

    .line 2605
    :cond_15
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2606
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_14
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2622
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2623
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2622
    :goto_12
    return v0

    .line 2623
    :cond_13
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2624
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_12
.end method

.method public findLastVisibleItemPosition()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2616
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2617
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2616
    :goto_11
    return v0

    .line 2617
    :cond_12
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2618
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_11
.end method

.method findOneVisibleChild(IIZ)I
    .registers 13
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z

    .prologue
    const/4 v7, -0x1

    .line 2628
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    .line 2629
    .local v6, "start":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 2630
    .local v3, "end":I
    if-le p2, p1, :cond_40

    const/4 v5, 0x1

    .line 2631
    .local v5, "next":I
    :goto_14
    move v4, p1

    .local v4, "i":I
    :goto_15
    if-eq v4, p2, :cond_3f

    .line 2632
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2633
    .local v0, "child":Landroid/view/View;
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 2634
    .local v2, "childStart":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    .line 2635
    .local v1, "childEnd":I
    if-ge v2, v3, :cond_49

    if-le v1, v6, :cond_49

    .line 2636
    if-eqz p3, :cond_42

    .line 2637
    if-lt v2, v6, :cond_49

    if-gt v1, v3, :cond_49

    .line 2638
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 2645
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childEnd":I
    .end local v2    # "childStart":I
    :cond_3f
    :goto_3f
    return v7

    .end local v4    # "i":I
    .end local v5    # "next":I
    :cond_40
    move v5, v7

    .line 2630
    goto :goto_14

    .line 2641
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childEnd":I
    .restart local v2    # "childStart":I
    .restart local v4    # "i":I
    .restart local v5    # "next":I
    :cond_42
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    goto :goto_3f

    .line 2631
    :cond_49
    add-int/2addr v4, v5

    goto :goto_15
.end method

.method public getDeletedSize()I
    .registers 2

    .prologue
    .line 2587
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return v0
.end method

.method getEndLine()I
    .registers 3

    .prologue
    .line 2489
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 2490
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2493
    :goto_8
    return v0

    .line 2492
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2493
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    goto :goto_8
.end method

.method getEndLine(I)I
    .registers 5
    .param p1, "def"    # I

    .prologue
    .line 2463
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_9

    .line 2464
    iget p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2471
    .end local p1    # "def":I
    :cond_8
    :goto_8
    return p1

    .line 2466
    .restart local p1    # "def":I
    :cond_9
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2467
    .local v0, "size":I
    if-eqz v0, :cond_8

    .line 2470
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2471
    iget p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    goto :goto_8
.end method

.method public getFocusableViewAfter(II)Landroid/view/View;
    .registers 11
    .param p1, "referenceChildPosition"    # I
    .param p2, "layoutDir"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2652
    const/4 v0, 0x0

    .line 2653
    .local v0, "candidate":Landroid/view/View;
    const/4 v4, -0x1

    if-ne p2, v4, :cond_32

    .line 2654
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2655
    .local v2, "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v2, :cond_64

    .line 2656
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2657
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_64

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    .line 2658
    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_30

    move v4, v5

    :goto_26
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v7, v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-ne v4, v7, :cond_64

    .line 2659
    move-object v0, v3

    .line 2655
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_30
    move v4, v6

    .line 2658
    goto :goto_26

    .line 2665
    .end local v1    # "i":I
    .end local v2    # "limit":I
    .end local v3    # "view":Landroid/view/View;
    :cond_32
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .restart local v1    # "i":I
    :goto_3a
    if-ltz v1, :cond_64

    .line 2666
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2667
    .restart local v3    # "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_64

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    .line 2668
    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_60

    move v4, v5

    :goto_53
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v7, v7, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v7, :cond_62

    move v7, v5

    :goto_5a
    if-ne v4, v7, :cond_64

    .line 2669
    move-object v0, v3

    .line 2665
    add-int/lit8 v1, v1, -0x1

    goto :goto_3a

    :cond_60
    move v4, v6

    .line 2668
    goto :goto_53

    :cond_62
    move v7, v6

    goto :goto_5a

    .line 2675
    .end local v3    # "view":Landroid/view/View;
    :cond_64
    return-object v0
.end method

.method getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2591
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    return-object v0
.end method

.method getStartLine()I
    .registers 3

    .prologue
    .line 2455
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 2456
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2459
    :goto_8
    return v0

    .line 2458
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2459
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_8
.end method

.method getStartLine(I)I
    .registers 4
    .param p1, "def"    # I

    .prologue
    .line 2430
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 2431
    iget p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2437
    .end local p1    # "def":I
    :cond_8
    :goto_8
    return p1

    .line 2433
    .restart local p1    # "def":I
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 2436
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2437
    iget p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_8
.end method

.method invalidateCache()V
    .registers 2

    .prologue
    const/high16 v0, -0x80000000

    .line 2551
    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2552
    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2553
    return-void
.end method

.method onOffset(I)V
    .registers 4
    .param p1, "dt"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 2595
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    if-eq v0, v1, :cond_b

    .line 2596
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2598
    :cond_b
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-eq v0, v1, :cond_14

    .line 2599
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2601
    :cond_14
    return-void
.end method

.method popEnd()V
    .registers 7

    .prologue
    const/high16 v5, -0x80000000

    .line 2560
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2561
    .local v2, "size":I
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2562
    .local v0, "end":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2563
    .local v1, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v3, 0x0

    iput-object v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    .line 2564
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2565
    :cond_25
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2567
    :cond_32
    const/4 v3, 0x1

    if-ne v2, v3, :cond_37

    .line 2568
    iput v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2570
    :cond_37
    iput v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2571
    return-void
.end method

.method popStart()V
    .registers 6

    .prologue
    const/high16 v4, -0x80000000

    .line 2574
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2575
    .local v1, "start":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2576
    .local v0, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    .line 2577
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1c

    .line 2578
    iput v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2580
    :cond_1c
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2581
    :cond_28
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2583
    :cond_35
    iput v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2584
    return-void
.end method

.method prependToSpan(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v3, -0x80000000

    .line 2497
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2498
    .local v0, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iput-object p0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    .line 2499
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2500
    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2501
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 2502
    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2504
    :cond_1b
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2505
    :cond_27
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2507
    :cond_34
    return-void
.end method

.method setLine(I)V
    .registers 2
    .param p1, "line"    # I

    .prologue
    .line 2556
    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2557
    return-void
.end method

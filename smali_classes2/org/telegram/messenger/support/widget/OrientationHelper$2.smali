.class final Lorg/telegram/messenger/support/widget/OrientationHelper$2;
.super Lorg/telegram/messenger/support/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/OrientationHelper;->createVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V
    .registers 3
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 388
    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 390
    .local v0, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 372
    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 374
    .local v0, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 380
    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 382
    .local v0, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 395
    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 397
    .local v0, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getEnd()I
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    return v0
.end method

.method public getEndAfterPadding()I
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndPadding()I
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public getModeInOther()I
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .registers 3

    .prologue
    .line 414
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .line 415
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 414
    return v0
.end method

.method public getTransformedEndWithDecoration(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 402
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 403
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getTransformedStartWithDecoration(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 408
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 409
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public offsetChild(Landroid/view/View;I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 420
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 421
    return-void
.end method

.method public offsetChildren(I)V
    .registers 3
    .param p1, "amount"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$2;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 363
    return-void
.end method

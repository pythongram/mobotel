.class Lorg/telegram/ui/ArticleViewer$BlockCollageCell;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockCollageCell"
.end annotation


# instance fields
.field private adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

.field private gridLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private inLayout:Z

.field private innerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private lastCreatedWidth:I

.field private listX:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 3446
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 3447
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3449
    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$1;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 3458
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const v1, -0xa0909

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 3459
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$2;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 3466
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/messenger/support/widget/GridLayoutManager;

    const/4 v2, 0x3

    invoke-direct {v1, p2, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->gridLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 3467
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Lorg/telegram/ui/ArticleViewer;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 3520
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3521
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->setWillNotDraw(Z)V

    .line 3522
    return-void
.end method

.method static synthetic access$12300(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    .prologue
    .line 3431
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    .prologue
    .line 3431
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->inLayout:Z

    return v0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    .prologue
    .line 3431
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3589
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-nez v0, :cond_5

    .line 3602
    :cond_4
    :goto_4
    return-void

    .line 3592
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_24

    .line 3593
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3594
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3595
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textLayout:Landroid/text/StaticLayout;

    # invokes: Lorg/telegram/ui/ArticleViewer;->drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 3596
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3597
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3599
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->level:I

    if-lez v0, :cond_4

    .line 3600
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->getMeasuredHeight()I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->bottom:Z

    if-eqz v0, :cond_55

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_49
    sub-int v0, v4, v0

    int-to-float v4, v0

    # getter for: Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$6900()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_55
    const/4 v0, 0x0

    goto :goto_49
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 3584
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->listX:I

    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->listX:I

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->layout(IIII)V

    .line 3585
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 3538
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->inLayout:Z

    .line 3539
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 3542
    .local v6, "width":I
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v7, :cond_d6

    .line 3543
    move v3, v6

    .line 3545
    .local v3, "listWidth":I
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->level:I

    if-lez v7, :cond_c1

    .line 3546
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->level:I

    mul-int/lit8 v7, v7, 0xe

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x41900000    # 18.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->listX:I

    iput v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    .line 3547
    iget v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->listX:I

    const/high16 v8, 0x41900000    # 18.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    .line 3548
    move v5, v3

    .line 3555
    .local v5, "textWidth":I
    :goto_33
    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    div-int v0, v3, v7

    .line 3556
    .local v0, "countPerRow":I
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v0

    div-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 3557
    .local v4, "rowCount":I
    div-int v2, v3, v0

    .line 3558
    .local v2, "itemSize":I
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->gridLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    .line 3559
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    mul-int v8, v2, v0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    mul-int v9, v2, v4

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->measure(II)V

    .line 3560
    mul-int v7, v4, v2

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v1, v7, v8

    .line 3562
    .local v1, "height":I
    iget v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->lastCreatedWidth:I

    if-eq v7, v6, :cond_a7

    .line 3563
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    # invokes: Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    invoke-static {v7, v8, v9, v5, v10}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textLayout:Landroid/text/StaticLayout;

    .line 3564
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v7, :cond_a7

    .line 3565
    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v7, v1

    iput v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    .line 3566
    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 3571
    :cond_a7
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->level:I

    if-lez v7, :cond_ba

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->bottom:Z

    if-nez v7, :cond_ba

    .line 3572
    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v1, v7

    .line 3578
    .end local v0    # "countPerRow":I
    .end local v2    # "itemSize":I
    .end local v3    # "listWidth":I
    .end local v4    # "rowCount":I
    .end local v5    # "textWidth":I
    :cond_ba
    :goto_ba
    invoke-virtual {p0, v6, v1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->setMeasuredDimension(II)V

    .line 3579
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->inLayout:Z

    .line 3580
    return-void

    .line 3550
    .end local v1    # "height":I
    .restart local v3    # "listWidth":I
    :cond_c1
    const/4 v7, 0x0

    iput v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->listX:I

    .line 3551
    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    .line 3552
    const/high16 v7, 0x42100000    # 36.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v5, v6, v7

    .restart local v5    # "textWidth":I
    goto/16 :goto_33

    .line 3575
    .end local v3    # "listWidth":I
    .end local v5    # "textWidth":I
    :cond_d6
    const/4 v1, 0x1

    .restart local v1    # "height":I
    goto :goto_ba
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3533
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    # invokes: Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;)V
    .registers 3
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .prologue
    .line 3525
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .line 3526
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->lastCreatedWidth:I

    .line 3527
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3528
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->requestLayout()V

    .line 3529
    return-void
.end method

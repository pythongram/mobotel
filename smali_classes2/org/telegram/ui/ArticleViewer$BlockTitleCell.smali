.class Lorg/telegram/ui/ArticleViewer$BlockTitleCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockTitleCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

.field private lastCreatedWidth:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 4434
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 4435
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4431
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textX:I

    .line 4436
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4478
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-nez v0, :cond_5

    .line 4488
    :cond_4
    :goto_4
    return-void

    .line 4481
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    .line 4482
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4483
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4484
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    # invokes: Lorg/telegram/ui/ArticleViewer;->drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 4485
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4486
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v7, 0x41000000    # 8.0f

    .line 4451
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 4452
    .local v1, "width":I
    const/4 v0, 0x0

    .line 4454
    .local v0, "height":I
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v2, :cond_54

    .line 4455
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->lastCreatedWidth:I

    if-eq v2, v1, :cond_49

    .line 4456
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v1, v5

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    # invokes: Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    .line 4457
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_38

    .line 4458
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 4460
    :cond_38
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;->first:Z

    if-eqz v2, :cond_4d

    .line 4461
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 4462
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textY:I

    .line 4473
    :cond_49
    :goto_49
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->setMeasuredDimension(II)V

    .line 4474
    return-void

    .line 4464
    :cond_4d
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textY:I

    goto :goto_49

    .line 4470
    :cond_54
    const/4 v0, 0x1

    goto :goto_49
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4446
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    # invokes: Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;)V
    .registers 3
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    .prologue
    .line 4439
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    .line 4440
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->lastCreatedWidth:I

    .line 4441
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->requestLayout()V

    .line 4442
    return-void
.end method

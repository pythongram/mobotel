.class Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockPullquoteCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

.field private lastCreatedWidth:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textLayout2:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field private textY2:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 4046
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 4047
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4041
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textX:I

    .line 4042
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY:I

    .line 4048
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4091
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-nez v0, :cond_5

    .line 4108
    :cond_4
    :goto_4
    return-void

    .line 4094
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_24

    .line 4095
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4096
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4097
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout:Landroid/text/StaticLayout;

    # invokes: Lorg/telegram/ui/ArticleViewer;->drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 4098
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4099
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4101
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout2:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    .line 4102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4103
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY2:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4104
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout2:Landroid/text/StaticLayout;

    # invokes: Lorg/telegram/ui/ArticleViewer;->drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 4105
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x42100000    # 36.0f

    const/high16 v6, 0x41000000    # 8.0f

    .line 4063
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 4064
    .local v1, "width":I
    const/4 v0, 0x0

    .line 4066
    .local v0, "height":I
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v2, :cond_6e

    .line 4067
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->lastCreatedWidth:I

    if-eq v2, v1, :cond_6a

    .line 4068
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v1, v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    # invokes: Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    invoke-static {v2, v8, v3, v4, v5}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout:Landroid/text/StaticLayout;

    .line 4069
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_36

    .line 4070
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 4072
    :cond_36
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v1, v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    # invokes: Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    invoke-static {v2, v8, v3, v4, v5}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout2:Landroid/text/StaticLayout;

    .line 4073
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout2:Landroid/text/StaticLayout;

    if-eqz v2, :cond_63

    .line 4074
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY2:I

    .line 4075
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 4077
    :cond_63
    if-eqz v0, :cond_6a

    .line 4078
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 4086
    :cond_6a
    :goto_6a
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->setMeasuredDimension(II)V

    .line 4087
    return-void

    .line 4083
    :cond_6e
    const/4 v0, 0x1

    goto :goto_6a
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4058
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    # invokes: Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout2:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY2:I

    move-object v1, p1

    move-object v2, p0

    # invokes: Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;)V
    .registers 3
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    .prologue
    .line 4051
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    .line 4052
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->lastCreatedWidth:I

    .line 4053
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->requestLayout()V

    .line 4054
    return-void
.end method

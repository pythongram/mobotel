.class Lorg/telegram/ui/ArticleViewer$12;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1560
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1602
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1603
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1604
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBar;->draw(Landroid/graphics/Canvas;)V

    .line 1605
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1606
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1592
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1593
    const/4 v0, 0x0

    .line 1594
    .local v0, "progress":F
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1595
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    long-to-float v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 1597
    :cond_24
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    .line 1598
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const-wide/16 v10, 0x3c

    .line 1575
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1577
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    if-eqz v3, :cond_80

    .line 1578
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    .line 1579
    .local v0, "duration":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v0, v4

    if-nez v3, :cond_22

    .line 1580
    const-wide/16 v0, 0x0

    .line 1585
    :cond_22
    :goto_22
    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 1586
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$4800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const-string v4, "%02d:%02d / %02d:%02d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    div-long v8, v0, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    rem-long v8, v0, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    div-long v8, v0, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    rem-long v8, v0, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1587
    .local v2, "size":I
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$4700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v3

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$12;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x42800000    # 64.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$12;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/SeekBar;->setSize(II)V

    .line 1588
    return-void

    .line 1583
    .end local v0    # "duration":J
    .end local v2    # "size":I
    :cond_80
    const-wide/16 v0, 0x0

    .restart local v0    # "duration":J
    goto :goto_22
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1564
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1565
    .local v1, "y":I
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$4700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/Components/SeekBar;->onTouch(IFF)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1566
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$12;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1567
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$12;->invalidate()V

    .line 1570
    :goto_35
    return v2

    :cond_36
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_35
.end method

.class Lorg/telegram/ui/Components/ChatAttachAlert$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastHeight:I

.field private lastWidth:I

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 471
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_7a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_7a

    .line 472
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 473
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2300()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->getMeasuredWidth()I

    move-result v2

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2400()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2500(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2600(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->revealRadius:F
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->ciclePaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 479
    :goto_50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 484
    :goto_53
    return-void

    .line 477
    :cond_54
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3000()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->getMeasuredWidth()I

    move-result v0

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3100()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->ciclePaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_50

    .line 481
    :cond_7a
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v2

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3200()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_53
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 385
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 393
    :goto_9
    return v0

    .line 387
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # invokes: Lorg/telegram/ui/Components/ChatAttachAlert;->processTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9

    .line 389
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3c

    .line 390
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_9

    .line 393
    :cond_3c
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onLayout(ZIIII)V
    .registers 21
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 430
    sub-int v14, p4, p2

    .line 431
    .local v14, "width":I
    sub-int v8, p5, p3

    .line 433
    .local v8, "height":I
    const/4 v12, -0x1

    .line 434
    .local v12, "newPosition":I
    const/4 v13, 0x0

    .line 436
    .local v13, "newTop":I
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v7

    .line 437
    .local v7, "count":I
    const/4 v10, -0x1

    .line 438
    .local v10, "lastVisibleItemPosition":I
    const/4 v11, 0x0

    .line 439
    .local v11, "lastVisibleItemPositionTop":I
    if-lez v7, :cond_40

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 441
    .local v6, "child":Landroid/view/View;
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 442
    .local v9, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-eqz v9, :cond_40

    .line 443
    invoke-virtual {v9}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v10

    .line 444
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    .line 448
    .end local v6    # "child":Landroid/view/View;
    .end local v9    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_40
    if-ltz v10, :cond_54

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lastHeight:I

    sub-int v0, v8, v0

    if-eqz v0, :cond_54

    .line 449
    move v12, v10

    .line 450
    add-int v0, v11, v8

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lastHeight:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->getPaddingTop()I

    move-result v1

    sub-int v13, v0, v1

    .line 453
    :cond_54
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 455
    const/4 v0, -0x1

    if-eq v12, v0, :cond_7c

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->ignoreLayout:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$902(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 458
    const/4 v1, 0x0

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-super/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->ignoreLayout:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$902(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z

    .line 462
    :cond_7c
    iput v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lastHeight:I

    .line 463
    iput v14, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lastWidth:I

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # invokes: Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout()V
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2000(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # invokes: Lorg/telegram/ui/Components/ChatAttachAlert;->checkCameraViewPosition()V
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 467
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x43930000    # 294.0f

    const/4 v4, 0x0

    .line 408
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 409
    .local v1, "height":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_10

    .line 410
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v1, v3

    .line 412
    :cond_10
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1400()I

    move-result v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v3

    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_62

    move v3, v4

    :goto_22
    add-int v0, v5, v3

    .line 413
    .local v0, "contentSize":I
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-ne v0, v3, :cond_81

    move v2, v4

    .line 414
    .local v2, "padding":I
    :goto_2b
    if-eqz v2, :cond_32

    if-ge v0, v1, :cond_32

    .line 415
    sub-int v3, v1, v0

    sub-int/2addr v2, v3

    .line 417
    :cond_32
    if-nez v2, :cond_38

    .line 418
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1500()I

    move-result v2

    .line 420
    :cond_38
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->getPaddingTop()I

    move-result v3

    if-eq v3, v2, :cond_54

    .line 421
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v5, 0x1

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->ignoreLayout:Z
    invoke-static {v3, v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$902(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z

    .line 422
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1600()I

    move-result v3

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1700()I

    move-result v5

    invoke-virtual {p0, v3, v2, v5, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->setPadding(IIII)V

    .line 423
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->ignoreLayout:Z
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$902(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z

    .line 425
    :cond_54
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, p1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    .line 426
    return-void

    .line 412
    .end local v0    # "contentSize":I
    .end local v2    # "padding":I
    :cond_62
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int/2addr v3, v6

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_22

    .line 413
    .restart local v0    # "contentSize":I
    :cond_81
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 398
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 403
    :cond_9
    :goto_9
    return v0

    .line 400
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # invokes: Lorg/telegram/ui/Components/ChatAttachAlert;->processTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9

    .line 403
    :cond_19
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->isDismissed()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_27
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->ignoreLayout:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 381
    :goto_8
    return-void

    .line 380
    :cond_9
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    goto :goto_8
.end method

.method public setTranslationY(F)V
    .registers 3
    .param p1, "translationY"    # F

    .prologue
    .line 488
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # invokes: Lorg/telegram/ui/Components/ChatAttachAlert;->checkCameraViewPosition()V
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 490
    return-void
.end method

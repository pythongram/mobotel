.class Lorg/telegram/ui/ArticleViewer$WindowView;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowView"
.end annotation


# instance fields
.field private alpha:F

.field private attachRunnable:Ljava/lang/Runnable;

.field private closeAnimationInProgress:Z

.field private innerTranslationX:F

.field private maybeStartTracking:Z

.field private selfLayout:Z

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private tracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 273
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 274
    return-void
.end method

.method static synthetic access$2202(Lorg/telegram/ui/ArticleViewer$WindowView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$WindowView;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    return p1
.end method

.method static synthetic access$2302(Lorg/telegram/ui/ArticleViewer$WindowView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$WindowView;
    .param p1, "x1"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->closeAnimationInProgress:Z

    return p1
.end method

.method private prepareForMoving(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingX:I

    .line 408
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 375
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$WindowView;->getMeasuredWidth()I

    move-result v11

    .line 376
    .local v11, "width":I
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    float-to-int v10, v0

    .line 378
    .local v10, "translationX":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 379
    .local v8, "restoreCount":I
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$WindowView;->getHeight()I

    move-result v1

    invoke-virtual {p1, v10, v0, v11, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 380
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    .line 381
    .local v9, "result":Z
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 383
    if-eqz v10, :cond_a0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p2, v0, :cond_a0

    .line 384
    const v0, 0x3f4ccccd

    sub-int v1, v11, v10

    int-to-float v1, v1

    int-to-float v2, v11

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 385
    .local v7, "opacity":F
    const/4 v0, 0x0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_36

    .line 386
    const/4 v7, 0x0

    .line 388
    :cond_36
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->scrimPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1700(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x43190000    # 153.0f

    mul-float/2addr v1, v7

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v10

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$WindowView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->scrimPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1700(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 391
    const/4 v0, 0x0

    sub-int v1, v11, v10

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 392
    .local v6, "alpha":F
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1800(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$1800(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int v1, v10, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1800(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1800(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 397
    .end local v6    # "alpha":F
    .end local v7    # "opacity":F
    :cond_a0
    return v9
.end method

.method public getAlpha()F
    .registers 2

    .prologue
    .line 518
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->alpha:F

    return v0
.end method

.method public getInnerTranslationX()F
    .registers 2

    .prologue
    .line 401
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z
    invoke-static {v10}, Lorg/telegram/ui/ArticleViewer;->access$1900(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v10

    if-nez v10, :cond_29c

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->closeAnimationInProgress:Z

    if-nez v10, :cond_29c

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v10}, Lorg/telegram/ui/ArticleViewer;->access$1100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_29c

    .line 412
    if-eqz p1, :cond_66

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_66

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-nez v10, :cond_66

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    if-nez v10, :cond_66

    .line 413
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingPointerId:I

    .line 414
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    .line 415
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingX:I

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingY:I

    .line 417
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_61

    .line 418
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->clear()V

    .line 496
    :cond_61
    :goto_61
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    .line 498
    :goto_65
    return v10

    .line 420
    :cond_66
    if-eqz p1, :cond_f0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingPointerId:I

    if-ne v10, v11, :cond_f0

    .line 421
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_8a

    .line 422
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    .line 424
    :cond_8a
    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingX:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 425
    .local v5, "dx":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingY:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 426
    .local v6, "dy":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 427
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    if-eqz v10, :cond_d6

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-nez v10, :cond_d6

    int-to-float v10, v5

    const v11, 0x3ecccccd

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_d6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    div-int/lit8 v10, v10, 0x3

    if-le v10, v6, :cond_d6

    .line 428
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->prepareForMoving(Landroid/view/MotionEvent;)V

    goto :goto_61

    .line 429
    :cond_d6
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-eqz v10, :cond_61

    .line 430
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v10}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v10

    int-to-float v11, v5

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 431
    int-to-float v10, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ArticleViewer$WindowView;->setInnerTranslationX(F)V

    goto/16 :goto_61

    .line 433
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    :cond_f0
    if-eqz p1, :cond_27c

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingPointerId:I

    if-ne v10, v11, :cond_27c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_114

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_114

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_27c

    .line 434
    :cond_114
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_122

    .line 435
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    .line 437
    :cond_122
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 438
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-nez v10, :cond_153

    .line 439
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 440
    .local v7, "velX":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 441
    .local v8, "velY":F
    const v10, 0x455ac000    # 3500.0f

    cmpl-float v10, v7, v10

    if-ltz v10, :cond_153

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v10, v7, v10

    if-lez v10, :cond_153

    .line 442
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->prepareForMoving(Landroid/view/MotionEvent;)V

    .line 445
    .end local v7    # "velX":F
    .end local v8    # "velY":F
    :cond_153
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-eqz v10, :cond_271

    .line 446
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v10}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getX()F

    move-result v9

    .line 447
    .local v9, "x":F
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 448
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 449
    .restart local v7    # "velX":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 450
    .restart local v8    # "velY":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v10}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    cmpg-float v10, v9, v10

    if-gez v10, :cond_23b

    const v10, 0x455ac000    # 3500.0f

    cmpg-float v10, v7, v10

    if-ltz v10, :cond_199

    cmpg-float v10, v7, v8

    if-gez v10, :cond_23b

    :cond_199
    const/4 v3, 0x1

    .line 452
    .local v3, "backAnimation":Z
    :goto_19a
    if-nez v3, :cond_23e

    .line 453
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v10}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float v4, v10, v9

    .line 454
    .local v4, "distToMove":F
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 455
    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v12}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v12

    const-string v13, "translationX"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "innerTranslationX"

    const/4 v13, 0x1

    new-array v13, v13, [F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 456
    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v15}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v10, v11

    .line 454
    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 466
    :goto_1f9
    const/high16 v10, 0x43480000    # 200.0f

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v11}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    mul-float/2addr v10, v4

    float-to-int v10, v10

    const/16 v11, 0x32

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 467
    new-instance v10, Lorg/telegram/ui/ArticleViewer$WindowView$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Lorg/telegram/ui/ArticleViewer$WindowView$1;-><init>(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V

    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 478
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 479
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->closeAnimationInProgress:Z

    .line 484
    .end local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v3    # "backAnimation":Z
    .end local v4    # "distToMove":F
    .end local v7    # "velX":F
    .end local v8    # "velY":F
    .end local v9    # "x":F
    :goto_227
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_61

    .line 485
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 486
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    goto/16 :goto_61

    .line 450
    .restart local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v7    # "velX":F
    .restart local v8    # "velY":F
    .restart local v9    # "x":F
    :cond_23b
    const/4 v3, 0x0

    goto/16 :goto_19a

    .line 459
    .restart local v3    # "backAnimation":Z
    :cond_23e
    move v4, v9

    .line 460
    .restart local v4    # "distToMove":F
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 461
    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v12}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v12

    const-string v13, "translationX"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "innerTranslationX"

    const/4 v13, 0x1

    new-array v13, v13, [F

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 462
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v10, v11

    .line 460
    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1f9

    .line 481
    .end local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v3    # "backAnimation":Z
    .end local v4    # "distToMove":F
    .end local v7    # "velX":F
    .end local v8    # "velY":F
    .end local v9    # "x":F
    :cond_271
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    .line 482
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    goto :goto_227

    .line 488
    :cond_27c
    if-nez p1, :cond_61

    .line 489
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    .line 490
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    .line 491
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_61

    .line 492
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 493
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    goto/16 :goto_61

    .line 498
    :cond_29c
    const/4 v10, 0x0

    goto/16 :goto_65
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 339
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$1302(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 341
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 345
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$1302(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 347
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 503
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$WindowView;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$WindowView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2400(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 504
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 357
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->collapsed:Z
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1400(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v6, 0x0

    .line 312
    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->selfLayout:Z

    if-eqz v2, :cond_6

    .line 335
    :goto_5
    return-void

    .line 316
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_fe

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_fe

    .line 317
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 318
    .local v0, "insets":Landroid/view/WindowInsets;
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 320
    .local v1, "x":I
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    if-eqz v2, :cond_d1

    .line 321
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$700(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v2

    sub-int v3, p4, p2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 330
    .end local v0    # "insets":Landroid/view/WindowInsets;
    :goto_3a
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v6, v3, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 331
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v6, v3, v4}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->layout(IIII)V

    .line 332
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$1000(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$1000(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$1000(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v6, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 333
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$1100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$1100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$1100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v6, v3, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 334
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$1200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$1200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ClippingImageView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$1200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ClippingImageView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Lorg/telegram/ui/Components/ClippingImageView;->layout(IIII)V

    goto/16 :goto_5

    .line 322
    .restart local v0    # "insets":Landroid/view/WindowInsets;
    :cond_d1
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    if-eqz v2, :cond_e8

    .line 323
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$700(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    sub-int v4, p5, p3

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3a

    .line 325
    :cond_e8
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$700(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v2

    sub-int v3, p5, p3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3a

    .line 328
    .end local v0    # "insets":Landroid/view/WindowInsets;
    .end local v1    # "x":I
    :cond_fe
    const/4 v1, 0x0

    .restart local v1    # "x":I
    goto/16 :goto_3a
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    .line 278
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 279
    .local v3, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 280
    .local v0, "heightSize":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_f7

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f7

    .line 281
    invoke-virtual {p0, v3, v0}, Lorg/telegram/ui/ArticleViewer$WindowView;->setMeasuredDimension(II)V

    .line 282
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    .line 283
    .local v1, "insets":Landroid/view/WindowInsets;
    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->incorrectDisplaySizeFix:Z

    if-eqz v4, :cond_36

    .line 284
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v0, v4, :cond_33

    .line 285
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v4, Landroid/graphics/Point;->y:I

    .line 287
    :cond_33
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v4

    .line 289
    :cond_36
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    sub-int/2addr v0, v4

    .line 290
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 291
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    if-eqz v4, :cond_c4

    .line 292
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$700(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 301
    .end local v1    # "insets":Landroid/view/WindowInsets;
    :goto_60
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->measure(II)V

    .line 302
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->measure(II)V

    .line 303
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$1000(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 304
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$1100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->measure(II)V

    .line 305
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$1200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 306
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$1200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v4

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/ClippingImageView;->measure(II)V

    .line 307
    return-void

    .line 293
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v1    # "insets":Landroid/view/WindowInsets;
    :cond_c4
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    if-eqz v4, :cond_e0

    .line 294
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$700(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    goto :goto_60

    .line 296
    :cond_e0
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$700(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v6

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    goto/16 :goto_60

    .line 299
    .end local v1    # "insets":Landroid/view/WindowInsets;
    :cond_f7
    invoke-virtual {p0, v3, v0}, Lorg/telegram/ui/ArticleViewer$WindowView;->setMeasuredDimension(II)V

    goto/16 :goto_60
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 362
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->collapsed:Z
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1400(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$WindowView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 352
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 353
    return-void
.end method

.method public setAlpha(F)V
    .registers 5
    .param p1, "value"    # F

    .prologue
    .line 508
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2400(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 509
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->alpha:F

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_3e

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->isVisible:Z
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1600(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->alpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3a

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_42

    :cond_3a
    const/4 v0, 0x1

    :goto_3b
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowDrawContent(Z)V

    .line 513
    :cond_3e
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$WindowView;->invalidate()V

    .line 514
    return-void

    .line 511
    :cond_42
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public setInnerTranslationX(F)V
    .registers 5
    .param p1, "value"    # F

    .prologue
    .line 366
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_31

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->isVisible:Z
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1600(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->alpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2d

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_35

    :cond_2d
    const/4 v0, 0x1

    :goto_2e
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowDrawContent(Z)V

    .line 370
    :cond_31
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$WindowView;->invalidate()V

    .line 371
    return-void

    .line 368
    :cond_35
    const/4 v0, 0x0

    goto :goto_2e
.end method

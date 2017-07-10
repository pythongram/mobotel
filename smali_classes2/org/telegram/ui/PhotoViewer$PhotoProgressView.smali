.class Lorg/telegram/ui/PhotoViewer$PhotoProgressView;
.super Ljava/lang/Object;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoProgressView"
.end annotation


# instance fields
.field private alpha:F

.field private animatedAlphaValue:F

.field private animatedProgressValue:F

.field private animationProgressStart:F

.field private backgroundState:I

.field private currentProgress:F

.field private currentProgressTime:J

.field private lastUpdateTime:J

.field private parent:Landroid/view/View;

.field private previousBackgroundState:I

.field private progressRect:Landroid/graphics/RectF;

.field private radOffset:F

.field private scale:F

.field private size:I

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V
    .registers 10
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parentView"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 419
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-wide v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    .line 405
    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    .line 406
    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    .line 407
    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    .line 408
    iput-wide v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    .line 409
    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    .line 410
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->progressRect:Landroid/graphics/RectF;

    .line 411
    iput v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    .line 413
    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->size:I

    .line 414
    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    .line 415
    iput v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    .line 416
    iput v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alpha:F

    .line 417
    iput v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    .line 420
    # getter for: Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1300()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v0

    if-nez v0, :cond_74

    .line 421
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    # setter for: Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1302(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;

    .line 422
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    # setter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1402(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 423
    # getter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 424
    # getter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 425
    # getter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 426
    # getter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 428
    :cond_74
    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    .line 429
    return-void
.end method

.method static synthetic access$10400(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    .prologue
    .line 402
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    return v0
.end method

.method private updateAnimation()V
    .registers 14

    .prologue
    const/4 v12, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 433
    .local v2, "newTime":J
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    sub-long v0, v2, v6

    .line 434
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    .line 436
    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_49

    .line 437
    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    const-wide/16 v6, 0x168

    mul-long/2addr v6, v0

    long-to-float v6, v6

    const v7, 0x453b8000    # 3000.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    .line 438
    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    iget v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    sub-float v4, v5, v6

    .line 439
    .local v4, "progressDiff":F
    cmpl-float v5, v4, v10

    if-lez v5, :cond_44

    .line 440
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    .line 441
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    const-wide/16 v8, 0x12c

    cmp-long v5, v6, v8

    if-ltz v5, :cond_6c

    .line 442
    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    iput v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    .line 443
    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    iput v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    .line 444
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    .line 449
    :cond_44
    :goto_44
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 451
    .end local v4    # "progressDiff":F
    :cond_49
    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_6b

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-eq v5, v12, :cond_6b

    .line 452
    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    long-to-float v6, v0

    const/high16 v7, 0x43480000    # 200.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    .line 453
    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_66

    .line 454
    iput v10, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    .line 455
    iput v12, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    .line 457
    :cond_66
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 459
    :cond_6b
    return-void

    .line 446
    .restart local v4    # "progressDiff":F
    :cond_6c
    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    # getter for: Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1300()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    long-to-float v7, v8

    const/high16 v8, 0x43960000    # 300.0f

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    goto :goto_44
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x4

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v2, 0x437f0000    # 255.0f

    .line 493
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->size:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    mul-float/2addr v0, v1

    float-to-int v8, v0

    .line 494
    .local v8, "sizeScaled":I
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v9, v0, 0x2

    .line 495
    .local v9, "x":I
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v10, v0, 0x2

    .line 497
    .local v10, "y":I
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-ltz v0, :cond_46

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-ge v0, v11, :cond_46

    .line 498
    # getter for: Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1700()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    aget-object v7, v0, v1

    .line 499
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_46

    .line 500
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 501
    add-int v0, v9, v8

    add-int v1, v10, v8

    invoke-virtual {v7, v9, v10, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 502
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 506
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_46
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    if-ltz v0, :cond_73

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    if-ge v0, v11, :cond_73

    .line 507
    # getter for: Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1700()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    aget-object v7, v0, v1

    .line 508
    .restart local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_73

    .line 509
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-eq v0, v3, :cond_c9

    .line 510
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 514
    :goto_69
    add-int v0, v9, v8

    add-int v1, v10, v8

    invoke-virtual {v7, v9, v10, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 515
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 519
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_73
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    if-eqz v0, :cond_83

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    if-eq v0, v4, :cond_83

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-eqz v0, :cond_83

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-ne v0, v4, :cond_c8

    .line 520
    :cond_83
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 521
    .local v6, "diff":I
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-eq v0, v3, :cond_d1

    .line 522
    # getter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 526
    :goto_99
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->progressRect:Landroid/graphics/RectF;

    add-int v1, v9, v6

    int-to-float v1, v1

    add-int v2, v10, v6

    int-to-float v2, v2

    add-int v3, v9, v8

    sub-int/2addr v3, v6

    int-to-float v3, v3

    add-int v4, v10, v8

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 527
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->progressRect:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    add-float/2addr v2, v0

    const/high16 v0, 0x43b40000    # 360.0f

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    mul-float/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v4, 0x0

    # getter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 528
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->updateAnimation()V

    .line 530
    .end local v6    # "diff":I
    :cond_c8
    return-void

    .line 512
    .restart local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_c9
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alpha:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_69

    .line 524
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "diff":I
    :cond_d1
    # getter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_99
.end method

.method public setAlpha(F)V
    .registers 2
    .param p1, "value"    # F

    .prologue
    .line 485
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alpha:F

    .line 486
    return-void
.end method

.method public setBackgroundState(IZ)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    .line 474
    if-eqz p2, :cond_1c

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    if-eq v0, p1, :cond_1c

    .line 475
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    .line 476
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    .line 480
    :goto_14
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 482
    return-void

    .line 478
    :cond_1c
    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    goto :goto_14
.end method

.method public setProgress(FZ)V
    .registers 5
    .param p1, "value"    # F
    .param p2, "animated"    # Z

    .prologue
    .line 462
    if-nez p2, :cond_d

    .line 463
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    .line 464
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    .line 468
    :goto_6
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    .line 469
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    .line 470
    return-void

    .line 466
    :cond_d
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    goto :goto_6
.end method

.method public setScale(F)V
    .registers 2
    .param p1, "value"    # F

    .prologue
    .line 489
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    .line 490
    return-void
.end method

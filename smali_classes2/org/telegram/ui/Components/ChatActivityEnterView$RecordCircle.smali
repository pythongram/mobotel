.class Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
.super Landroid/view/View;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordCircle"
.end annotation


# instance fields
.field private amplitude:F

.field private animateAmplitudeDiff:F

.field private animateToAmplitude:F

.field private lastUpdateTime:J

.field private scale:F

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 433
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 434
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 435
    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->paint:Landroid/graphics/Paint;
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v0

    const-string v1, "chat_messagePanelVoiceBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->paintRecord:Landroid/graphics/Paint;
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v0

    const-string v1, "chat_messagePanelVoiceShadow"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->micDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1802(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 438
    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->micDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chat_messagePanelVoicePressed"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 440
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->cameraDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1902(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 441
    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->cameraDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chat_messagePanelVoicePressed"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 442
    return-void
.end method


# virtual methods
.method public getScale()F
    .registers 2

    .prologue
    .line 452
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x3e800000    # 0.25f

    const v10, 0x3dcccccd

    const/4 v13, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v12, 0x40000000    # 2.0f

    .line 462
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    .line 463
    .local v1, "cx":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    .line 466
    .local v2, "cy":I
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_e8

    .line 467
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    div-float v6, v7, v9

    .local v6, "sc":F
    move v0, v6

    .line 475
    .local v0, "alpha":F
    :goto_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    sub-long v4, v8, v10

    .line 476
    .local v4, "dt":J
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_4f

    .line 477
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    long-to-float v9, v4

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    .line 478
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    cmpl-float v7, v7, v13

    if-lez v7, :cond_10d

    .line 479
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4c

    .line 480
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iput v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    .line 487
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 489
    :cond_4f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    .line 490
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    cmpl-float v7, v7, v13

    if-eqz v7, :cond_85

    .line 491
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    const/high16 v9, 0x42280000    # 42.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->paintRecord:Landroid/graphics/Paint;
    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 493
    :cond_85
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    const/high16 v9, 0x42280000    # 42.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->paint:Landroid/graphics/Paint;
    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 494
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v7

    if-eqz v7, :cond_11b

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_11b

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->cameraDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 495
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_bc
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v2, v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v2

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 496
    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 497
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 498
    return-void

    .line 468
    .end local v0    # "alpha":F
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "dt":J
    .end local v6    # "sc":F
    :cond_e8
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v8, 0x3f400000    # 0.75f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_fd

    .line 469
    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v11

    mul-float/2addr v8, v10

    sub-float v6, v7, v8

    .line 470
    .restart local v6    # "sc":F
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "alpha":F
    goto/16 :goto_21

    .line 472
    .end local v0    # "alpha":F
    .end local v6    # "sc":F
    :cond_fd
    const v7, 0x3f666666

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v9, 0x3f400000    # 0.75f

    sub-float/2addr v8, v9

    div-float/2addr v8, v11

    mul-float/2addr v8, v10

    add-float v6, v7, v8

    .line 473
    .restart local v6    # "sc":F
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "alpha":F
    goto/16 :goto_21

    .line 483
    .restart local v4    # "dt":J
    :cond_10d
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    iget v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4c

    .line 484
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iput v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    goto/16 :goto_4c

    .line 494
    :cond_11b
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->micDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_bc
.end method

.method public setAmplitude(D)V
    .registers 6
    .param p1, "value"    # D

    .prologue
    .line 445
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    .line 446
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    .line 448
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 449
    return-void
.end method

.method public setScale(F)V
    .registers 2
    .param p1, "value"    # F

    .prologue
    .line 456
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    .line 457
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 458
    return-void
.end method

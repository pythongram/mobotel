.class public Lorg/telegram/ui/Components/CheckBoxSquare;
.super Landroid/view/View;
.source "CheckBoxSquare.java"


# static fields
.field private static final progressBounceDiff:F = 0.2f


# instance fields
.field private attachedToWindow:Z

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private drawBitmap:Landroid/graphics/Bitmap;

.field private drawCanvas:Landroid/graphics/Canvas;

.field private isAlert:Z

.field private isChecked:Z

.field private isDisabled:Z

.field private progress:F

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alert"    # Z

    .prologue
    const/high16 v1, 0x41900000    # 18.0f

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->rectF:Landroid/graphics/RectF;

    .line 43
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawBitmap:Landroid/graphics/Bitmap;

    .line 44
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawCanvas:Landroid/graphics/Canvas;

    .line 45
    return-void
.end method

.method private animateToCheckedState(Z)V
    .registers 6
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 67
    const-string v1, "progress"

    const/4 v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    if-eqz p1, :cond_1f

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_a
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->checkAnimator:Landroid/animation/ObjectAnimator;

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->checkAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 70
    return-void

    .line 67
    :cond_1f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private cancelCheckAnimator()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 64
    :cond_9
    return-void
.end method


# virtual methods
.method public getProgress()F
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->progress:F

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->attachedToWindow:Z

    .line 76
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->attachedToWindow:Z

    .line 82
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 113
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/CheckBoxSquare;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    .line 158
    :goto_6
    return-void

    .line 119
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->isAlert:Z

    if-eqz v1, :cond_1c8

    const-string v1, "dialogCheckboxSquareUnchecked"

    :goto_f
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    .line 120
    .local v18, "uncheckedColor":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->isAlert:Z

    if-eqz v1, :cond_1cc

    const-string v1, "dialogCheckboxSquareBackground"

    :goto_1b
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    .line 121
    .local v12, "color":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->progress:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1d0

    .line 122
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->progress:F

    const/high16 v2, 0x3f000000    # 0.5f

    div-float v11, v1, v2

    .local v11, "checkProgress":F
    move v9, v11

    .line 123
    .local v9, "bounceProgress":F
    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v11

    float-to-int v0, v1

    move/from16 v16, v0

    .line 124
    .local v16, "rD":I
    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v11

    float-to-int v15, v1

    .line 125
    .local v15, "gD":I
    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v11

    float-to-int v7, v1

    .line 126
    .local v7, "bD":I
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->red(I)I

    move-result v1

    add-int v1, v1, v16

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->green(I)I

    move-result v2

    add-int/2addr v2, v15

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    add-int/2addr v3, v7

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    .line 127
    .local v10, "c":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    .end local v7    # "bD":I
    .end local v10    # "c":I
    .end local v15    # "gD":I
    .end local v16    # "rD":I
    :goto_71
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->isDisabled:Z

    if-eqz v1, :cond_88

    .line 134
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_backgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->isAlert:Z

    if-eqz v1, :cond_1e4

    const-string v1, "dialogCheckboxSquareDisabled"

    :goto_81
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    :cond_88
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v8, v1, v9

    .line 137
    .local v8, "bounce":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->rectF:Landroid/graphics/RectF;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v8

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v8

    invoke-virtual {v1, v8, v8, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 142
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v11, v1

    if-eqz v1, :cond_11d

    .line 143
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v11

    add-float/2addr v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 144
    .local v17, "rad":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->rectF:Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v17

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float v3, v3, v17

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v4, v17

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v5, v17

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->rectF:Landroid/graphics/RectF;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 148
    .end local v17    # "rad":F
    :cond_11d
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->progress:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1ba

    .line 149
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_checkPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->isAlert:Z

    if-eqz v1, :cond_1e8

    const-string v1, "dialogCheckboxSquareCheck"

    :goto_131
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    const/high16 v1, 0x40f00000    # 7.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v9

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v13, v1

    .line 151
    .local v13, "endX":I
    const/high16 v1, 0x41580000    # 13.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v9

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v14, v1

    .line 152
    .local v14, "endY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawCanvas:Landroid/graphics/Canvas;

    const/high16 v2, 0x40f00000    # 7.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41580000    # 13.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    int-to-float v4, v13

    int-to-float v5, v14

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_checkPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 153
    const/high16 v1, 0x40d00000    # 6.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v13, v1

    .line 154
    const/high16 v1, 0x41580000    # 13.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v9

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v14, v1

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawCanvas:Landroid/graphics/Canvas;

    const/high16 v2, 0x40d00000    # 6.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x41580000    # 13.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    int-to-float v4, v13

    int-to-float v5, v14

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_checkPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 157
    .end local v13    # "endX":I
    .end local v14    # "endY":I
    :cond_1ba
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 119
    .end local v8    # "bounce":F
    .end local v9    # "bounceProgress":F
    .end local v11    # "checkProgress":F
    .end local v12    # "color":I
    .end local v18    # "uncheckedColor":I
    :cond_1c8
    const-string v1, "checkboxSquareUnchecked"

    goto/16 :goto_f

    .line 120
    .restart local v18    # "uncheckedColor":I
    :cond_1cc
    const-string v1, "checkboxSquareBackground"

    goto/16 :goto_1b

    .line 129
    .restart local v12    # "color":I
    :cond_1d0
    const/high16 v1, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CheckBoxSquare;->progress:F

    const/high16 v3, 0x3f000000    # 0.5f

    div-float/2addr v2, v3

    sub-float v9, v1, v2

    .line 130
    .restart local v9    # "bounceProgress":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 131
    .restart local v11    # "checkProgress":F
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_71

    .line 134
    :cond_1e4
    const-string v1, "checkboxSquareDisabled"

    goto/16 :goto_81

    .line 149
    .restart local v8    # "bounce":F
    :cond_1e8
    const-string v1, "checkboxSquareCheck"

    goto/16 :goto_131
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 86
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 87
    return-void
.end method

.method public setChecked(ZZ)V
    .registers 4
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked:Z

    if-ne p1, v0, :cond_5

    .line 100
    :goto_4
    return-void

    .line 93
    :cond_5
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked:Z

    .line 94
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->attachedToWindow:Z

    if-eqz v0, :cond_11

    if-eqz p2, :cond_11

    .line 95
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CheckBoxSquare;->animateToCheckedState(Z)V

    goto :goto_4

    .line 97
    :cond_11
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxSquare;->cancelCheckAnimator()V

    .line 98
    if-eqz p1, :cond_1c

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_18
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->setProgress(F)V

    goto :goto_4

    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public setDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->isDisabled:Z

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBoxSquare;->invalidate()V

    .line 105
    return-void
.end method

.method public setProgress(F)V
    .registers 3
    .param p1, "value"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 49
    iget v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    .line 54
    :goto_6
    return-void

    .line 52
    :cond_7
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->progress:F

    .line 53
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBoxSquare;->invalidate()V

    goto :goto_6
.end method

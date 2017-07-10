.class public Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;
.super Landroid/view/View;
.source "RadialTextsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$1;,
        Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;,
        Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RadialTextsView"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mAnimationRadiusMultiplier:F

.field private mCircleRadius:F

.field private mCircleRadiusMultiplier:F

.field mDisappearAnimator:Landroid/animation/ObjectAnimator;

.field private mDrawValuesReady:Z

.field private mHasInnerCircle:Z

.field private final mInactivePaint:Landroid/graphics/Paint;

.field private mInnerNumbersRadiusMultiplier:F

.field private mInnerTextGridHeights:[F

.field private mInnerTextGridWidths:[F

.field private mInnerTextSize:F

.field private mInnerTextSizeMultiplier:F

.field private mInnerTexts:[Ljava/lang/String;

.field private mInvalidateUpdateListener:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private mNumbersRadiusMultiplier:F

.field private final mPaint:Landroid/graphics/Paint;

.field mReappearAnimator:Landroid/animation/ObjectAnimator;

.field private final mSelectedPaint:Landroid/graphics/Paint;

.field private mTextGridHeights:[F

.field private mTextGridValuesDirty:Z

.field private mTextGridWidths:[F

.field private mTextSize:F

.field private mTextSizeMultiplier:F

.field private mTexts:[Ljava/lang/String;

.field private mTransitionEndRadiusMultiplier:F

.field private mTransitionMidRadiusMultiplier:F

.field private mTypefaceLight:Landroid/graphics/Typeface;

.field private mTypefaceRegular:Landroid/graphics/Typeface;

.field private mValidator:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;

.field private mXCenter:I

.field private mYCenter:I

.field private selection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInactivePaint:Landroid/graphics/Paint;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->selection:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mIsInitialized:Z

    .line 87
    return-void
.end method

.method private assignTextColors([Ljava/lang/String;)[Landroid/graphics/Paint;
    .registers 6
    .param p1, "texts"    # [Ljava/lang/String;

    .prologue
    .line 289
    array-length v3, p1

    new-array v1, v3, [Landroid/graphics/Paint;

    .line 290
    .local v1, "paints":[Landroid/graphics/Paint;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v3, p1

    if-ge v0, v3, :cond_2a

    .line 291
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 292
    .local v2, "text":I
    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->selection:I

    if-ne v2, v3, :cond_18

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mSelectedPaint:Landroid/graphics/Paint;

    aput-object v3, v1, v0

    .line 290
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 293
    :cond_18
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mValidator:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;

    invoke-interface {v3, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;->isValidSelection(I)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    aput-object v3, v1, v0

    goto :goto_15

    .line 294
    :cond_25
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInactivePaint:Landroid/graphics/Paint;

    aput-object v3, v1, v0

    goto :goto_15

    .line 296
    .end local v2    # "text":I
    :cond_2a
    return-object v1
.end method

.method private calculateGridSizes(FFFF[F[F)V
    .registers 13
    .param p1, "numbersRadius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "textGridHeights"    # [F
    .param p6, "textGridWidths"    # [F

    .prologue
    .line 261
    move v0, p1

    .line 263
    .local v0, "offset1":F
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v1, v3, v4

    .line 265
    .local v1, "offset2":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v2, p1, v3

    .line 266
    .local v2, "offset3":F
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 267
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 268
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInactivePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 270
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr p3, v3

    .line 272
    const/4 v3, 0x0

    sub-float v4, p3, v0

    aput v4, p5, v3

    .line 273
    const/4 v3, 0x0

    sub-float v4, p2, v0

    aput v4, p6, v3

    .line 274
    const/4 v3, 0x1

    sub-float v4, p3, v1

    aput v4, p5, v3

    .line 275
    const/4 v3, 0x1

    sub-float v4, p2, v1

    aput v4, p6, v3

    .line 276
    const/4 v3, 0x2

    sub-float v4, p3, v2

    aput v4, p5, v3

    .line 277
    const/4 v3, 0x2

    sub-float v4, p2, v2

    aput v4, p6, v3

    .line 278
    const/4 v3, 0x3

    aput p3, p5, v3

    .line 279
    const/4 v3, 0x3

    aput p2, p6, v3

    .line 280
    const/4 v3, 0x4

    add-float v4, p3, v2

    aput v4, p5, v3

    .line 281
    const/4 v3, 0x4

    add-float v4, p2, v2

    aput v4, p6, v3

    .line 282
    const/4 v3, 0x5

    add-float v4, p3, v1

    aput v4, p5, v3

    .line 283
    const/4 v3, 0x5

    add-float v4, p2, v1

    aput v4, p6, v3

    .line 284
    const/4 v3, 0x6

    add-float v4, p3, v0

    aput v4, p5, v3

    .line 285
    const/4 v3, 0x6

    add-float v4, p2, v0

    aput v4, p6, v3

    .line 286
    return-void
.end method

.method private drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "texts"    # [Ljava/lang/String;
    .param p5, "textGridWidths"    # [F
    .param p6, "textGridHeights"    # [F

    .prologue
    .line 304
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 305
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 306
    invoke-direct {p0, p4}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->assignTextColors([Ljava/lang/String;)[Landroid/graphics/Paint;

    move-result-object v0

    .line 307
    .local v0, "textPaints":[Landroid/graphics/Paint;
    const/4 v1, 0x0

    aget-object v1, p4, v1

    const/4 v2, 0x3

    aget v2, p5, v2

    const/4 v3, 0x0

    aget v3, p6, v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 308
    const/4 v1, 0x1

    aget-object v1, p4, v1

    const/4 v2, 0x4

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p6, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 309
    const/4 v1, 0x2

    aget-object v1, p4, v1

    const/4 v2, 0x5

    aget v2, p5, v2

    const/4 v3, 0x2

    aget v3, p6, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 310
    const/4 v1, 0x3

    aget-object v1, p4, v1

    const/4 v2, 0x6

    aget v2, p5, v2

    const/4 v3, 0x3

    aget v3, p6, v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 311
    const/4 v1, 0x4

    aget-object v1, p4, v1

    const/4 v2, 0x5

    aget v2, p5, v2

    const/4 v3, 0x4

    aget v3, p6, v3

    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 312
    const/4 v1, 0x5

    aget-object v1, p4, v1

    const/4 v2, 0x4

    aget v2, p5, v2

    const/4 v3, 0x5

    aget v3, p6, v3

    const/4 v4, 0x5

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 313
    const/4 v1, 0x6

    aget-object v1, p4, v1

    const/4 v2, 0x3

    aget v2, p5, v2

    const/4 v3, 0x6

    aget v3, p6, v3

    const/4 v4, 0x6

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 314
    const/4 v1, 0x7

    aget-object v1, p4, v1

    const/4 v2, 0x2

    aget v2, p5, v2

    const/4 v3, 0x5

    aget v3, p6, v3

    const/4 v4, 0x7

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 315
    const/16 v1, 0x8

    aget-object v1, p4, v1

    const/4 v2, 0x1

    aget v2, p5, v2

    const/4 v3, 0x4

    aget v3, p6, v3

    const/16 v4, 0x8

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 316
    const/16 v1, 0x9

    aget-object v1, p4, v1

    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x3

    aget v3, p6, v3

    const/16 v4, 0x9

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 317
    const/16 v1, 0xa

    aget-object v1, p4, v1

    const/4 v2, 0x1

    aget v2, p5, v2

    const/4 v3, 0x2

    aget v3, p6, v3

    const/16 v4, 0xa

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 318
    const/16 v1, 0xb

    aget-object v1, p4, v1

    const/4 v2, 0x2

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p6, v3

    const/16 v4, 0xb

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 319
    return-void
.end method

.method private renderAnimations()V
    .registers 21

    .prologue
    .line 326
    const v11, 0x3e4ccccd

    .line 327
    .local v11, "midwayPoint":F
    const/16 v4, 0x1f4

    .line 330
    .local v4, "duration":I
    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 331
    .local v7, "kf0":Landroid/animation/Keyframe;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v11, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 332
    .local v8, "kf1":Landroid/animation/Keyframe;
    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 333
    .local v9, "kf2":Landroid/animation/Keyframe;
    const-string v17, "animationRadiusMultiplier"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x2

    aput-object v9, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 336
    .local v12, "radiusDisappear":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 337
    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 338
    const-string v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 340
    .local v6, "fadeOut":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    const/16 v18, 0x1

    aput-object v6, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v17

    int-to-long v0, v4

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mDisappearAnimator:Landroid/animation/ObjectAnimator;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mDisappearAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInvalidateUpdateListener:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 346
    const/high16 v2, 0x3e800000    # 0.25f

    .line 347
    .local v2, "delayMultiplier":F
    const/high16 v16, 0x3f800000    # 1.0f

    .line 348
    .local v16, "transitionDurationMultiplier":F
    add-float v15, v16, v2

    .line 349
    .local v15, "totalDurationMultiplier":F
    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v17, v17, v15

    move/from16 v0, v17

    float-to-int v14, v0

    .line 350
    .local v14, "totalDuration":I
    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v17, v17, v2

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v3, v17, v18

    .line 351
    .local v3, "delayPoint":F
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v3

    mul-float v18, v18, v11

    sub-float v11, v17, v18

    .line 353
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 354
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v11, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 356
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 357
    .local v10, "kf3":Landroid/animation/Keyframe;
    const-string v17, "animationRadiusMultiplier"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x2

    aput-object v9, v18, v19

    const/16 v19, 0x3

    aput-object v10, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 360
    .local v13, "radiusReappear":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 361
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 362
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 363
    const-string v17, "alpha"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x2

    aput-object v9, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 365
    .local v5, "fadeIn":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v13, v17, v18

    const/16 v18, 0x1

    aput-object v5, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v17

    int-to-long v0, v14

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mReappearAnimator:Landroid/animation/ObjectAnimator;

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mReappearAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInvalidateUpdateListener:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    return-void
.end method


# virtual methods
.method public getDisappearAnimator()Landroid/animation/ObjectAnimator;
    .registers 3

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mDisappearAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_15

    .line 372
    :cond_c
    const-string v0, "RadialTextsView"

    const-string v1, "RadialTextView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, 0x0

    .line 376
    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mDisappearAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_14
.end method

.method public getReappearAnimator()Landroid/animation/ObjectAnimator;
    .registers 3

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mReappearAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_15

    .line 381
    :cond_c
    const-string v0, "RadialTextsView"

    const-string v1, "RadialTextView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x0

    .line 385
    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mReappearAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_14
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;Z)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "texts"    # [Ljava/lang/String;
    .param p3, "innerTexts"    # [Ljava/lang/String;
    .param p4, "controller"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;
    .param p5, "validator"    # Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    .param p6, "disappearsOut"    # Z

    .prologue
    .line 91
    iget-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-eqz v6, :cond_c

    .line 92
    const-string v6, "RadialTextsView"

    const-string v7, "This RadialTextsView may only be initialized once."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_b
    return-void

    .line 95
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 98
    .local v1, "res":Landroid/content/res/Resources;
    invoke-interface {p4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->isThemeDark()Z

    move-result v6

    if-eqz v6, :cond_115

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_white:I

    .line 99
    .local v3, "textColorRes":I
    :goto_18
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    sget v6, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_radial_numbers_typeface:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "typefaceFamily":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTypefaceLight:Landroid/graphics/Typeface;

    .line 102
    sget v6, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_sans_serif:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "typefaceFamilyRegular":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTypefaceRegular:Landroid/graphics/Typeface;

    .line 104
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 108
    sget v6, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_white:I

    invoke-static {p1, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 109
    .local v2, "selectedTextColor":I
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mSelectedPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 114
    invoke-interface {p4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->isThemeDark()Z

    move-result v6

    if-eqz v6, :cond_119

    sget v0, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_text_disabled_dark_theme:I

    .line 116
    .local v0, "inactiveColorRes":I
    :goto_68
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInactivePaint:Landroid/graphics/Paint;

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInactivePaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInactivePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 120
    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTexts:[Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerTexts:[Ljava/lang/String;

    .line 122
    invoke-interface {p4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->is24HourMode()Z

    move-result v6

    iput-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mIs24HourMode:Z

    .line 123
    if-eqz p3, :cond_11d

    const/4 v6, 0x1

    :goto_8b
    iput-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    .line 126
    iget-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mIs24HourMode:Z

    if-eqz v6, :cond_120

    .line 127
    sget v6, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_circle_radius_multiplier_24HourMode:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mCircleRadiusMultiplier:F

    .line 137
    :goto_9d
    const/4 v6, 0x7

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextGridHeights:[F

    .line 138
    const/4 v6, 0x7

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextGridWidths:[F

    .line 139
    iget-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v6, :cond_13a

    .line 140
    sget v6, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_numbers_radius_multiplier_outer:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mNumbersRadiusMultiplier:F

    .line 142
    sget v6, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_text_size_multiplier_outer:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextSizeMultiplier:F

    .line 144
    sget v6, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_numbers_radius_multiplier_inner:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerNumbersRadiusMultiplier:F

    .line 146
    sget v6, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_text_size_multiplier_inner:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerTextSizeMultiplier:F

    .line 149
    const/4 v6, 0x7

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerTextGridHeights:[F

    .line 150
    const/4 v6, 0x7

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerTextGridWidths:[F

    .line 158
    :goto_e5
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    .line 159
    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3d4ccccd

    if-eqz p6, :cond_153

    const/4 v6, -0x1

    :goto_f1
    int-to-float v6, v6

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    .line 160
    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e99999a

    if-eqz p6, :cond_155

    const/4 v6, 0x1

    :goto_fe
    int-to-float v6, v6

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    .line 161
    new-instance v6, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;-><init>(Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$1;)V

    iput-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInvalidateUpdateListener:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    .line 163
    iput-object p5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mValidator:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;

    .line 165
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 166
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mIsInitialized:Z

    goto/16 :goto_b

    .line 98
    .end local v0    # "inactiveColorRes":I
    .end local v2    # "selectedTextColor":I
    .end local v3    # "textColorRes":I
    .end local v4    # "typefaceFamily":Ljava/lang/String;
    .end local v5    # "typefaceFamilyRegular":Ljava/lang/String;
    :cond_115
    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_numbers_text_color:I

    goto/16 :goto_18

    .line 114
    .restart local v2    # "selectedTextColor":I
    .restart local v3    # "textColorRes":I
    .restart local v4    # "typefaceFamily":Ljava/lang/String;
    .restart local v5    # "typefaceFamilyRegular":Ljava/lang/String;
    :cond_119
    sget v0, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_text_disabled:I

    goto/16 :goto_68

    .line 123
    .restart local v0    # "inactiveColorRes":I
    :cond_11d
    const/4 v6, 0x0

    goto/16 :goto_8b

    .line 130
    :cond_120
    sget v6, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_circle_radius_multiplier:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mCircleRadiusMultiplier:F

    .line 132
    sget v6, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_ampm_circle_radius_multiplier:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mAmPmCircleRadiusMultiplier:F

    goto/16 :goto_9d

    .line 152
    :cond_13a
    sget v6, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_numbers_radius_multiplier_normal:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mNumbersRadiusMultiplier:F

    .line 154
    sget v6, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_text_size_multiplier_normal:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextSizeMultiplier:F

    goto :goto_e5

    .line 159
    :cond_153
    const/4 v6, 0x1

    goto :goto_f1

    .line 160
    :cond_155
    const/4 v6, -0x1

    goto :goto_fe
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x1

    .line 196
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getWidth()I

    move-result v12

    .line 197
    .local v12, "viewWidth":I
    if-eqz v12, :cond_b

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-nez v0, :cond_c

    .line 249
    :cond_b
    :goto_b
    return-void

    .line 201
    :cond_c
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    if-nez v0, :cond_5c

    .line 202
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mXCenter:I

    .line 203
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mYCenter:I

    .line 204
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mXCenter:I

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mYCenter:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mCircleRadiusMultiplier:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mCircleRadius:F

    .line 205
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mIs24HourMode:Z

    if-nez v0, :cond_43

    .line 209
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mAmPmCircleRadiusMultiplier:F

    mul-float v11, v0, v2

    .line 210
    .local v11, "amPmCircleRadius":F
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mYCenter:I

    int-to-double v4, v0

    float-to-double v6, v11

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v0, v4

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mYCenter:I

    .line 213
    .end local v11    # "amPmCircleRadius":F
    :cond_43
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextSizeMultiplier:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextSize:F

    .line 214
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v0, :cond_55

    .line 215
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerTextSizeMultiplier:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerTextSize:F

    .line 219
    :cond_55
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->renderAnimations()V

    .line 221
    iput-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 222
    iput-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    .line 226
    :cond_5c
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    if-eqz v0, :cond_99

    .line 227
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mNumbersRadiusMultiplier:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    mul-float v1, v0, v2

    .line 231
    .local v1, "numbersRadius":F
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mXCenter:I

    int-to-float v2, v0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mYCenter:I

    int-to-float v3, v0

    iget v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextSize:F

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextGridHeights:[F

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextGridWidths:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->calculateGridSizes(FFFF[F[F)V

    .line 233
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v0, :cond_96

    .line 235
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerNumbersRadiusMultiplier:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    mul-float v3, v0, v2

    .line 237
    .local v3, "innerNumbersRadius":F
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mXCenter:I

    int-to-float v4, v0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mYCenter:I

    int-to-float v5, v0

    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerTextSize:F

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerTextGridHeights:[F

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerTextGridWidths:[F

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->calculateGridSizes(FFFF[F[F)V

    .line 240
    .end local v3    # "innerNumbersRadius":F
    :cond_96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 244
    .end local v1    # "numbersRadius":F
    :cond_99
    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextSize:F

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTypefaceLight:Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTexts:[Ljava/lang/String;

    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextGridWidths:[F

    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextGridHeights:[F

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    .line 245
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v0, :cond_b

    .line 246
    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerTextSize:F

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTypefaceRegular:Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerTexts:[Ljava/lang/String;

    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerTextGridWidths:[F

    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mInnerTextGridHeights:[F

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    goto/16 :goto_b
.end method

.method public setAnimationRadiusMultiplier(F)V
    .registers 3
    .param p1, "animationRadiusMultiplier"    # F

    .prologue
    .line 190
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 192
    return-void
.end method

.method protected setSelection(I)V
    .registers 2
    .param p1, "selection"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->selection:I

    .line 175
    return-void
.end method

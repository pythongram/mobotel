.class public Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;
.super Landroid/view/View;
.source "RadialSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView$1;,
        Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;
    }
.end annotation


# static fields
.field private static final FULL_ALPHA:I = 0xff

.field private static final SELECTED_ALPHA:I = 0xff

.field private static final SELECTED_ALPHA_THEME_DARK:I = 0xff

.field private static final TAG:Ljava/lang/String; = "RadialSelectorView"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mAnimationRadiusMultiplier:F

.field private mCircleRadius:I

.field private mCircleRadiusMultiplier:F

.field private mDrawValuesReady:Z

.field private mForceDrawDot:Z

.field private mHasInnerCircle:Z

.field private mInnerNumbersRadiusMultiplier:F

.field private mInvalidateUpdateListener:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private mLineLength:I

.field private mNumbersRadiusMultiplier:F

.field private mOuterNumbersRadiusMultiplier:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mSelectionAlpha:I

.field private mSelectionDegrees:I

.field private mSelectionRadians:D

.field private mSelectionRadius:I

.field private mSelectionRadiusMultiplier:F

.field private mTransitionEndRadiusMultiplier:F

.field private mTransitionMidRadiusMultiplier:F

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    .line 79
    return-void
.end method


# virtual methods
.method public getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I
    .registers 29
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "forceLegal"    # Z
    .param p4, "isInnerCircle"    # [Ljava/lang/Boolean;

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 186
    const/4 v2, -0x1

    .line 256
    :cond_9
    :goto_9
    return v2

    .line 189
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, p2, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, p2, v20

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, p1, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, p1, v21

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 193
    .local v8, "hypotenuse":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mHasInnerCircle:Z

    move/from16 v19, v0

    if-eqz v19, :cond_197

    .line 194
    if-eqz p3, :cond_fe

    .line 197
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v7, v0

    .line 198
    .local v7, "innerNumberRadius":I
    int-to-double v0, v7

    move-wide/from16 v20, v0

    sub-double v20, v8, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v3, v0

    .line 199
    .local v3, "distanceToInnerNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v14, v0

    .line 200
    .local v14, "outerNumberRadius":I
    int-to-double v0, v14

    move-wide/from16 v20, v0

    sub-double v20, v8, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v5, v0

    .line 202
    .local v5, "distanceToOuterNumber":I
    const/16 v20, 0x0

    if-gt v3, v5, :cond_fb

    const/16 v19, 0x1

    :goto_a1
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, p4, v20

    .line 240
    .end local v3    # "distanceToInnerNumber":I
    .end local v5    # "distanceToOuterNumber":I
    .end local v7    # "innerNumberRadius":I
    .end local v14    # "outerNumberRadius":I
    :cond_a7
    :goto_a7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, p2, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 241
    .local v13, "opposite":F
    float-to-double v0, v13

    move-wide/from16 v20, v0

    div-double v20, v20, v8

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    .line 242
    .local v16, "radians":D
    const-wide v20, 0x4066800000000000L    # 180.0

    mul-double v20, v20, v16

    const-wide v22, 0x400921fb54442d18L    # Math.PI

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v2, v0

    .line 245
    .local v2, "degrees":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, p1, v19

    if-lez v19, :cond_1cc

    const/4 v15, 0x1

    .line 246
    .local v15, "rightSide":Z
    :goto_e2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, p2, v19

    if-gez v19, :cond_1cf

    const/16 v18, 0x1

    .line 247
    .local v18, "topSide":Z
    :goto_f3
    if-eqz v15, :cond_1d3

    if-eqz v18, :cond_1d3

    .line 248
    rsub-int/lit8 v2, v2, 0x5a

    goto/16 :goto_9

    .line 202
    .end local v2    # "degrees":I
    .end local v13    # "opposite":F
    .end local v15    # "rightSide":Z
    .end local v16    # "radians":D
    .end local v18    # "topSide":Z
    .restart local v3    # "distanceToInnerNumber":I
    .restart local v5    # "distanceToOuterNumber":I
    .restart local v7    # "innerNumberRadius":I
    .restart local v14    # "outerNumberRadius":I
    :cond_fb
    const/16 v19, 0x0

    goto :goto_a1

    .line 207
    .end local v3    # "distanceToInnerNumber":I
    .end local v5    # "distanceToOuterNumber":I
    .end local v7    # "innerNumberRadius":I
    .end local v14    # "outerNumberRadius":I
    :cond_fe
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 209
    .local v12, "minAllowedHypotenuseForInnerNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    move/from16 v20, v0

    add-int v11, v19, v20

    .line 211
    .local v11, "maxAllowedHypotenuseForOuterNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    move/from16 v21, v0

    add-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v6, v0

    .line 214
    .local v6, "halfwayHypotenusePoint":I
    int-to-double v0, v12

    move-wide/from16 v20, v0

    cmpl-double v19, v8, v20

    if-ltz v19, :cond_17a

    int-to-double v0, v6

    move-wide/from16 v20, v0

    cmpg-double v19, v8, v20

    if-gtz v19, :cond_17a

    .line 216
    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, p4, v19

    goto/16 :goto_a7

    .line 217
    :cond_17a
    int-to-double v0, v11

    move-wide/from16 v20, v0

    cmpg-double v19, v8, v20

    if-gtz v19, :cond_194

    int-to-double v0, v6

    move-wide/from16 v20, v0

    cmpl-double v19, v8, v20

    if-ltz v19, :cond_194

    .line 219
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, p4, v19

    goto/16 :goto_a7

    .line 221
    :cond_194
    const/4 v2, -0x1

    goto/16 :goto_9

    .line 228
    .end local v6    # "halfwayHypotenusePoint":I
    .end local v11    # "maxAllowedHypotenuseForOuterNumber":I
    .end local v12    # "minAllowedHypotenuseForInnerNumber":I
    :cond_197
    if-nez p3, :cond_a7

    .line 229
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mLineLength:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v20, v8, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v4, v0

    .line 232
    .local v4, "distanceToNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v10, v0

    .line 233
    .local v10, "maxAllowedDistance":I
    if-le v4, v10, :cond_a7

    .line 234
    const/4 v2, -0x1

    goto/16 :goto_9

    .line 245
    .end local v4    # "distanceToNumber":I
    .end local v10    # "maxAllowedDistance":I
    .restart local v2    # "degrees":I
    .restart local v13    # "opposite":F
    .restart local v16    # "radians":D
    :cond_1cc
    const/4 v15, 0x0

    goto/16 :goto_e2

    .line 246
    .restart local v15    # "rightSide":Z
    :cond_1cf
    const/16 v18, 0x0

    goto/16 :goto_f3

    .line 249
    .restart local v18    # "topSide":Z
    :cond_1d3
    if-eqz v15, :cond_1db

    if-nez v18, :cond_1db

    .line 250
    add-int/lit8 v2, v2, 0x5a

    goto/16 :goto_9

    .line 251
    :cond_1db
    if-nez v15, :cond_1e3

    if-nez v18, :cond_1e3

    .line 252
    rsub-int v2, v2, 0x10e

    goto/16 :goto_9

    .line 253
    :cond_1e3
    if-nez v15, :cond_9

    if-eqz v18, :cond_9

    .line 254
    add-int/lit16 v2, v2, 0x10e

    goto/16 :goto_9
.end method

.method public getDisappearAnimator()Landroid/animation/ObjectAnimator;
    .registers 16

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 313
    iget-boolean v8, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    if-eqz v8, :cond_e

    iget-boolean v8, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    if-nez v8, :cond_17

    .line 314
    :cond_e
    const-string v8, "RadialSelectorView"

    const-string v9, "RadialSelectorView was not ready for animation."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x0

    .line 336
    :goto_16
    return-object v0

    .line 319
    :cond_17
    const v6, 0x3e4ccccd

    .line 320
    .local v6, "midwayPoint":F
    const/16 v1, 0x1f4

    .line 322
    .local v1, "duration":I
    invoke-static {v11, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 323
    .local v3, "kf0":Landroid/animation/Keyframe;
    iget v8, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mTransitionMidRadiusMultiplier:F

    invoke-static {v6, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 324
    .local v4, "kf1":Landroid/animation/Keyframe;
    iget v8, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    invoke-static {v10, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 325
    .local v5, "kf2":Landroid/animation/Keyframe;
    const-string v8, "animationRadiusMultiplier"

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Keyframe;

    aput-object v3, v9, v12

    aput-object v4, v9, v13

    aput-object v5, v9, v14

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 328
    .local v7, "radiusDisappear":Landroid/animation/PropertyValuesHolder;
    invoke-static {v11, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 329
    invoke-static {v10, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 330
    const-string v8, "alpha"

    new-array v9, v14, [Landroid/animation/Keyframe;

    aput-object v3, v9, v12

    aput-object v4, v9, v13

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 332
    .local v2, "fadeOut":Landroid/animation/PropertyValuesHolder;
    new-array v8, v14, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v8, v12

    aput-object v2, v8, v13

    invoke-static {p0, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    int-to-long v10, v1

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 334
    .local v0, "disappearAnimator":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mInvalidateUpdateListener:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_16
.end method

.method public getReappearAnimator()Landroid/animation/ObjectAnimator;
    .registers 23

    .prologue
    .line 340
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    move/from16 v18, v0

    if-nez v18, :cond_19

    .line 341
    :cond_10
    const-string v18, "RadialSelectorView"

    const-string v19, "RadialSelectorView was not ready for animation."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v14, 0x0

    .line 374
    :goto_18
    return-object v14

    .line 346
    :cond_19
    const v12, 0x3e4ccccd

    .line 347
    .local v12, "midwayPoint":F
    const/16 v6, 0x1f4

    .line 352
    .local v6, "duration":I
    const/high16 v4, 0x3e800000    # 0.25f

    .line 353
    .local v4, "delayMultiplier":F
    const/high16 v17, 0x3f800000    # 1.0f

    .line 354
    .local v17, "transitionDurationMultiplier":F
    add-float v16, v17, v4

    .line 355
    .local v16, "totalDurationMultiplier":F
    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v15, v0

    .line 356
    .local v15, "totalDuration":I
    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v18, v18, v4

    int-to-float v0, v15

    move/from16 v19, v0

    div-float v5, v18, v19

    .line 357
    .local v5, "delayPoint":F
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v5

    mul-float v19, v19, v12

    sub-float v12, v18, v19

    .line 359
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 360
    .local v8, "kf0":Landroid/animation/Keyframe;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v5, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 361
    .local v9, "kf1":Landroid/animation/Keyframe;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mTransitionMidRadiusMultiplier:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 362
    .local v10, "kf2":Landroid/animation/Keyframe;
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    .line 363
    .local v11, "kf3":Landroid/animation/Keyframe;
    const-string v18, "animationRadiusMultiplier"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v8, v19, v20

    const/16 v20, 0x1

    aput-object v9, v19, v20

    const/16 v20, 0x2

    aput-object v10, v19, v20

    const/16 v20, 0x3

    aput-object v11, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 366
    .local v13, "radiusReappear":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 367
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v5, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 368
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 369
    const-string v18, "alpha"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v8, v19, v20

    const/16 v20, 0x1

    aput-object v9, v19, v20

    const/16 v20, 0x2

    aput-object v10, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 371
    .local v7, "fadeIn":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v13, v18, v19

    const/16 v19, 0x1

    aput-object v7, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    int-to-long v0, v15

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 373
    .local v14, "reappearAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mInvalidateUpdateListener:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_18
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;ZZIZ)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;
    .param p3, "hasInnerCircle"    # Z
    .param p4, "disappearsOut"    # Z
    .param p5, "selectionDegrees"    # I
    .param p6, "isInnerCircle"    # Z

    .prologue
    const/16 v5, 0xff

    const/4 v3, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 96
    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    if-eqz v2, :cond_12

    .line 97
    const-string v2, "RadialSelectorView"

    const-string v3, "This RadialSelectorView may only be initialized once."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_11
    return-void

    .line 101
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 103
    .local v1, "res":Landroid/content/res/Resources;
    invoke-interface {p2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->getAccentColor()I

    move-result v0

    .line 104
    .local v0, "accentColor":I
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    invoke-interface {p2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->isThemeDark()Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_2a
    iput v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionAlpha:I

    .line 110
    invoke-interface {p2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->is24HourMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mIs24HourMode:Z

    .line 111
    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mIs24HourMode:Z

    if-eqz v2, :cond_91

    .line 112
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_circle_radius_multiplier_24HourMode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mCircleRadiusMultiplier:F

    .line 122
    :goto_42
    iput-boolean p3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mHasInnerCircle:Z

    .line 123
    if-eqz p3, :cond_aa

    .line 124
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_numbers_radius_multiplier_inner:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    .line 126
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_numbers_radius_multiplier_outer:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    .line 132
    :goto_5e
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_selection_radius_multiplier:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadiusMultiplier:F

    .line 136
    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mAnimationRadiusMultiplier:F

    .line 137
    const v5, 0x3d4ccccd

    if-eqz p4, :cond_b7

    move v2, v3

    :goto_72
    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float/2addr v2, v6

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mTransitionMidRadiusMultiplier:F

    .line 138
    const v2, 0x3e99999a

    if-eqz p4, :cond_7d

    move v3, v4

    :cond_7d
    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v6

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    .line 139
    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;-><init>(Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView$1;)V

    iput-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mInvalidateUpdateListener:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

    .line 141
    const/4 v2, 0x0

    invoke-virtual {p0, p5, p6, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 142
    iput-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    goto :goto_11

    .line 115
    :cond_91
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_circle_radius_multiplier:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mCircleRadiusMultiplier:F

    .line 117
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_ampm_circle_radius_multiplier:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mAmPmCircleRadiusMultiplier:F

    goto :goto_42

    .line 129
    :cond_aa
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_numbers_radius_multiplier_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    goto :goto_5e

    :cond_b7
    move v2, v4

    .line 137
    goto :goto_72
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v11, 0xff

    const/4 v0, 0x1

    .line 261
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getWidth()I

    move-result v10

    .line 262
    .local v10, "viewWidth":I
    if-eqz v10, :cond_d

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    if-nez v1, :cond_e

    .line 310
    :cond_d
    :goto_d
    return-void

    .line 266
    :cond_e
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    if-nez v1, :cond_52

    .line 267
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    .line 268
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    .line 269
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mCircleRadiusMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    .line 271
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mIs24HourMode:Z

    if-nez v1, :cond_47

    .line 275
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v6, v1

    .line 276
    .local v6, "amPmCircleRadius":I
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-double v2, v1

    int-to-double v4, v6

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v12

    sub-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    .line 279
    .end local v6    # "amPmCircleRadius":I
    :cond_47
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadiusMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    .line 281
    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    .line 285
    :cond_52
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mAnimationRadiusMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mLineLength:I

    .line 286
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mLineLength:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v8, v1, v2

    .line 287
    .local v8, "pointX":I
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mLineLength:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sub-int v9, v1, v2

    .line 290
    .local v9, "pointY":I
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 291
    int-to-float v1, v8

    int-to-float v2, v9

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 293
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mForceDrawDot:Z

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionDegrees:I

    rem-int/lit8 v2, v2, 0x1e

    if-eqz v2, :cond_c7

    :goto_95
    or-int/2addr v0, v1

    if-eqz v0, :cond_c9

    .line 295
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 296
    int-to-float v0, v8

    int-to-float v1, v9

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 307
    :goto_ab
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 308
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 309
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    int-to-float v1, v0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v9

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_d

    .line 293
    :cond_c7
    const/4 v0, 0x0

    goto :goto_95

    .line 300
    :cond_c9
    iget v7, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mLineLength:I

    .line 301
    .local v7, "lineLength":I
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    sub-int/2addr v7, v0

    .line 302
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mXCenter:I

    int-to-double v2, v7

    iget-wide v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int v8, v0, v1

    .line 303
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-double v2, v7

    iget-wide v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    sub-int v9, v0, v1

    goto :goto_ab
.end method

.method public setAnimationRadiusMultiplier(F)V
    .registers 2
    .param p1, "animationRadiusMultiplier"    # F

    .prologue
    .line 180
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mAnimationRadiusMultiplier:F

    .line 181
    return-void
.end method

.method public setSelection(IZZ)V
    .registers 8
    .param p1, "selectionDegrees"    # I
    .param p2, "isInnerCircle"    # Z
    .param p3, "forceDrawDot"    # Z

    .prologue
    .line 155
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionDegrees:I

    .line 156
    int-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    .line 157
    iput-boolean p3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mForceDrawDot:Z

    .line 159
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mHasInnerCircle:Z

    if-eqz v0, :cond_1d

    .line 160
    if-eqz p2, :cond_1e

    .line 161
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    .line 166
    :cond_1d
    :goto_1d
    return-void

    .line 163
    :cond_1e
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    goto :goto_1d
.end method

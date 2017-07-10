.class public Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;
    }
.end annotation


# static fields
.field public static final CIRCLE_COLOR_PROPERTY:Ljava/lang/String; = "centerColor"

.field public static final CIRCLE_SCALE_PROPERTY:Ljava/lang/String; = "circleScale"

.field public static final OUTLINE_COLOR_PROPERTY:Ljava/lang/String; = "outlineColor"

.field public static final PROGRESS_FACTOR:I = -0x168

.field public static final PROGRESS_PROPERTY:Ljava/lang/String; = "progress"

.field public static final RING_COLOR_PROPERTY:Ljava/lang/String; = "ringColor"

.field public static final TAG:Ljava/lang/String; = "CircularProgressDrawable"


# instance fields
.field protected final arcElements:Landroid/graphics/RectF;

.field protected centerColor:I

.field protected circleScale:F

.field protected indeterminate:Z

.field protected outlineColor:I

.field private final paint:Landroid/graphics/Paint;

.field protected progress:F

.field protected ringColor:I

.field protected final ringWidth:I


# direct methods
.method constructor <init>(IFIII)V
    .registers 8
    .param p1, "ringWidth"    # I
    .param p2, "circleScale"    # F
    .param p3, "outlineColor"    # I
    .param p4, "ringColor"    # I
    .param p5, "centerColor"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->progress:F

    .line 133
    iput p3, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->outlineColor:I

    .line 134
    iput p4, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->ringColor:I

    .line 135
    iput p5, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->centerColor:I

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    iput p1, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->ringWidth:I

    .line 139
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->arcElements:Landroid/graphics/RectF;

    .line 140
    iput p2, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->circleScale:F

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->indeterminate:Z

    .line 142
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 146
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 149
    .local v12, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 150
    .local v18, "size":I
    div-int/lit8 v2, v18, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->ringWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v17, v0

    .line 151
    .local v17, "outerRadius":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->circleScale:F

    mul-float v14, v17, v2

    .line 152
    .local v14, "innerRadius":F
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v15, v2, v3

    .line 153
    .local v15, "offsetX":F
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v16, v2, v3

    .line 156
    .local v16, "offsetY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->outlineColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->centerColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v14, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 166
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->ringWidth:I

    div-int/lit8 v13, v2, 0x2

    .line 167
    .local v13, "halfRingWidth":I
    int-to-float v2, v13

    add-float v9, v15, v2

    .line 168
    .local v9, "arcX0":F
    int-to-float v2, v13

    add-float v11, v16, v2

    .line 169
    .local v11, "arcY0":F
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v17

    add-float/2addr v2, v15

    int-to-float v3, v13

    sub-float v8, v2, v3

    .line 170
    .local v8, "arcX":F
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v17

    add-float v2, v2, v16

    int-to-float v3, v13

    sub-float v10, v2, v3

    .line 173
    .local v10, "arcY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->ringColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->ringWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->arcElements:Landroid/graphics/RectF;

    invoke-virtual {v2, v9, v11, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 178
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->indeterminate:Z

    if-eqz v2, :cond_ff

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->arcElements:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->progress:F

    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 183
    :goto_fe
    return-void

    .line 181
    :cond_ff
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->arcElements:Landroid/graphics/RectF;

    const/high16 v4, 0x42b20000    # 89.0f

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->progress:F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_fe
.end method

.method public getCenterColor()I
    .registers 2

    .prologue
    .line 295
    iget v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->centerColor:I

    return v0
.end method

.method public getCircleScale()F
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->circleScale:F

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getOutlineColor()I
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->outlineColor:I

    return v0
.end method

.method public getProgress()F
    .registers 3

    .prologue
    .line 209
    iget v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->progress:F

    const/high16 v1, -0x3c4c0000    # -360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRingColor()I
    .registers 2

    .prologue
    .line 286
    iget v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->ringColor:I

    return v0
.end method

.method public isIndeterminate()Z
    .registers 2

    .prologue
    .line 251
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->indeterminate:Z

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 188
    return-void
.end method

.method public setCenterColor(I)V
    .registers 2
    .param p1, "centerColor"    # I

    .prologue
    .line 324
    iput p1, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->centerColor:I

    .line 325
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->invalidateSelf()V

    .line 326
    return-void
.end method

.method public setCircleScale(F)V
    .registers 2
    .param p1, "circleScale"    # F

    .prologue
    .line 241
    iput p1, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->circleScale:F

    .line 242
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->invalidateSelf()V

    .line 243
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 193
    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 2
    .param p1, "indeterminate"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->indeterminate:Z

    .line 269
    return-void
.end method

.method public setOutlineColor(I)V
    .registers 2
    .param p1, "outlineColor"    # I

    .prologue
    .line 304
    iput p1, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->outlineColor:I

    .line 305
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->invalidateSelf()V

    .line 306
    return-void
.end method

.method public setProgress(F)V
    .registers 3
    .param p1, "progress"    # F

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->indeterminate:Z

    if-eqz v0, :cond_a

    .line 219
    iput p1, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->progress:F

    .line 223
    :goto_6
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->invalidateSelf()V

    .line 224
    return-void

    .line 221
    :cond_a
    const/high16 v0, -0x3c4c0000    # -360.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->progress:F

    goto :goto_6
.end method

.method public setRingColor(I)V
    .registers 2
    .param p1, "ringColor"    # I

    .prologue
    .line 314
    iput p1, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->ringColor:I

    .line 315
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;->invalidateSelf()V

    .line 316
    return-void
.end method

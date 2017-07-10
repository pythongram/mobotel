.class public Lorg/telegram/ui/Components/voip/CallSwipeView;
.super Landroid/view/View;
.source "CallSwipeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/CallSwipeView$ArrowAnimWrapper;,
        Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;
    }
.end annotation


# instance fields
.field private animatingArrows:Z

.field private arrow:Landroid/graphics/Path;

.field private arrowAlphas:[I

.field private arrowAnim:Landroid/animation/AnimatorSet;

.field private arrowsPaint:Landroid/graphics/Paint;

.field private dragFromRight:Z

.field private dragStartX:F

.field private dragging:Z

.field private listener:Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;

.field private pullBgPaint:Landroid/graphics/Paint;

.field private tmpRect:Landroid/graphics/RectF;

.field private viewToDrag:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAlphas:[I

    .line 34
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragging:Z

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->tmpRect:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    .line 40
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->animatingArrows:Z

    .line 44
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->init()V

    .line 45
    return-void

    .line 32
    :array_22
    .array-data 4
        0x40
        0x40
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAlphas:[I

    .line 34
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragging:Z

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->tmpRect:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    .line 40
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->animatingArrows:Z

    .line 49
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->init()V

    .line 50
    return-void

    .line 32
    :array_22
    .array-data 4
        0x40
        0x40
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAlphas:[I

    .line 34
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragging:Z

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->tmpRect:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    .line 40
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->animatingArrows:Z

    .line 54
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->init()V

    .line 55
    return-void

    .line 32
    :array_22
    .array-data 4
        0x40
        0x40
        0x40
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/CallSwipeView;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/voip/CallSwipeView;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/CallSwipeView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/voip/CallSwipeView;

    .prologue
    .line 29
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->animatingArrows:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/CallSwipeView;)[I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/voip/CallSwipeView;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAlphas:[I

    return-object v0
.end method

.method private getDraggedViewWidth()I
    .registers 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v0

    return v0
.end method

.method private init()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 58
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowsPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowsPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowsPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowsPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40200000    # 2.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->pullBgPaint:Landroid/graphics/Paint;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v2, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAlphas:[I

    array-length v4, v4

    if-ge v3, v4, :cond_55

    .line 66
    new-instance v0, Lorg/telegram/ui/Components/voip/CallSwipeView$ArrowAnimWrapper;

    invoke-direct {v0, p0, v3}, Lorg/telegram/ui/Components/voip/CallSwipeView$ArrowAnimWrapper;-><init>(Lorg/telegram/ui/Components/voip/CallSwipeView;I)V

    .line 67
    .local v0, "aaw":Lorg/telegram/ui/Components/voip/CallSwipeView$ArrowAnimWrapper;
    const-string v4, "arrowAlpha"

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_6c

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 68
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x2bc

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 69
    mul-int/lit16 v4, v3, 0xc8

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 71
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 73
    .end local v0    # "aaw":Lorg/telegram/ui/Components/voip/CallSwipeView$ArrowAnimWrapper;
    .end local v1    # "anim":Landroid/animation/ObjectAnimator;
    :cond_55
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAnim:Landroid/animation/AnimatorSet;

    .line 74
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 75
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAnim:Landroid/animation/AnimatorSet;

    new-instance v5, Lorg/telegram/ui/Components/voip/CallSwipeView$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/voip/CallSwipeView$1;-><init>(Lorg/telegram/ui/Components/voip/CallSwipeView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 105
    return-void

    .line 67
    :array_6c
    .array-data 4
        0x40
        0xff
        0x40
    .end array-data
.end method

.method private updateArrowPath()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 205
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 206
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 207
    .local v0, "size":I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-eqz v1, :cond_25

    .line 208
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    int-to-float v2, v0

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 209
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 210
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    int-to-float v2, v0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 216
    :goto_24
    return-void

    .line 212
    :cond_25
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    int-to-float v2, v0

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 214
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    int-to-float v2, v0

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_24
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v8, 0x0

    .line 176
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_49

    .line 177
    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-eqz v3, :cond_c6

    .line 178
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    add-float/2addr v5, v6

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getDraggedViewWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v5, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 182
    :goto_34
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->pullBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 184
    :cond_49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-eqz v3, :cond_de

    .line 186
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 190
    :goto_6b
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 191
    .local v2, "offsetX":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_76
    const/4 v3, 0x3

    if-ge v0, v3, :cond_f8

    .line 192
    const/high16 v1, 0x3f800000    # 1.0f

    .line 193
    .local v1, "masterAlpha":F
    mul-int/lit8 v3, v0, 0x10

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_9f

    .line 194
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    mul-int/2addr v3, v0

    int-to-float v3, v3

    sub-float v3, v2, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v1, v9, v3

    .line 196
    :cond_9f
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowsPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAlphas:[I

    aget v5, v5, v0

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 197
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 198
    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-eqz v3, :cond_f6

    const/high16 v3, -0x3e800000    # -16.0f

    :goto_bb
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 180
    .end local v0    # "i":I
    .end local v1    # "masterAlpha":F
    .end local v2    # "offsetX":F
    :cond_c6
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->tmpRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getDraggedViewWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v8, v8, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_34

    .line 188
    :cond_de
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v3

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_6b

    .restart local v0    # "i":I
    .restart local v1    # "masterAlpha":F
    .restart local v2    # "offsetX":F
    :cond_f6
    move v3, v4

    .line 198
    goto :goto_bb

    .line 200
    .end local v1    # "masterAlpha":F
    :cond_f8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 201
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->invalidate()V

    .line 202
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 128
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 152
    :goto_9
    return v0

    .line 130
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_51

    .line 131
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-nez v0, :cond_21

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getDraggedViewWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_37

    :cond_21
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getDraggedViewWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4e

    .line 132
    :cond_37
    iput-boolean v5, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragging:Z

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragStartX:F

    .line 134
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->listener:Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;

    invoke-interface {v0}, Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;->onDragStart()V

    .line 136
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->stopAnimatingArrows()V

    .line 152
    :cond_4e
    :goto_4e
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragging:Z

    goto :goto_9

    .line 138
    :cond_51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_90

    .line 139
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-eqz v0, :cond_83

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getDraggedViewWidth()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    :goto_69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragStartX:F

    sub-float/2addr v3, v4

    iget-boolean v4, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-eqz v4, :cond_85

    :goto_74
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->invalidate()V

    goto :goto_4e

    :cond_83
    move v0, v1

    .line 139
    goto :goto_69

    :cond_85
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getDraggedViewWidth()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    goto :goto_74

    .line 141
    :cond_90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v5, :cond_9d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4e

    .line 142
    :cond_9d
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getWidth()I

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getDraggedViewWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_c1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_c1

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->listener:Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;

    invoke-interface {v0}, Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;->onDragComplete()V

    goto :goto_4e

    .line 145
    :cond_c1
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->listener:Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;

    invoke-interface {v2}, Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;->onDragCancel()V

    .line 146
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 147
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->invalidate()V

    .line 148
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->startAnimatingArrows()V

    .line 149
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragging:Z

    goto/16 :goto_4e
.end method

.method public reset()V
    .registers 5

    .prologue
    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->listener:Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;

    invoke-interface {v0}, Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;->onDragCancel()V

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 169
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->invalidate()V

    .line 170
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->startAnimatingArrows()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragging:Z

    .line 172
    return-void
.end method

.method public setColor(I)V
    .registers 4
    .param p1, "color"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->pullBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->pullBgPaint:Landroid/graphics/Paint;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 110
    return-void
.end method

.method public setListener(Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;)V
    .registers 2
    .param p1, "listener"    # Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->listener:Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;

    .line 120
    return-void
.end method

.method public setViewToDrag(Landroid/view/View;Z)V
    .registers 3
    .param p1, "viewToDrag"    # Landroid/view/View;
    .param p2, "dragFromRight"    # Z

    .prologue
    .line 113
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    .line 114
    iput-boolean p2, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    .line 115
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->updateArrowPath()V

    .line 116
    return-void
.end method

.method public startAnimatingArrows()V
    .registers 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->animatingArrows:Z

    if-eqz v0, :cond_5

    .line 164
    :goto_4
    return-void

    .line 162
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->animatingArrows:Z

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4
.end method

.method public stopAnimatingArrows()V
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->animatingArrows:Z

    .line 157
    return-void
.end method

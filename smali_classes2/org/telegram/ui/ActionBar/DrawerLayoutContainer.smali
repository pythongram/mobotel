.class public Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
.super Landroid/widget/FrameLayout;
.source "DrawerLayoutContainer.java"


# static fields
.field private static final MIN_DRAWER_MARGIN:I = 0x40


# instance fields
.field private allowDrawContent:Z

.field private allowOpenDrawer:Z

.field private beginTrackingSent:Z

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private drawerLayout:Landroid/view/ViewGroup;

.field private drawerOpened:Z

.field private drawerPosition:F

.field private inLayout:Z

.field private lastInsets:Ljava/lang/Object;

.field private maybeStartTracking:Z

.field private minDrawerMargin:I

.field private paddingTop:I

.field private parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private scrimOpacity:F

.field private scrimPaint:Landroid/graphics/Paint;

.field private shadowLeft:Landroid/graphics/drawable/Drawable;

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimPaint:Landroid/graphics/Paint;

    .line 65
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    .line 70
    const/high16 v0, 0x42800000    # 64.0f

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->minDrawerMargin:I

    .line 71
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDescendantFocusability(I)V

    .line 72
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setFocusableInTouchMode(Z)V

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_36

    .line 75
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setFitsSystemWindows(Z)V

    .line 76
    new-instance v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$1;-><init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 88
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setSystemUiVisibility(I)V

    .line 91
    :cond_36
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    .line 92
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastInsets:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onDrawerAnimationEnd(Z)V

    return-void
.end method

.method private applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;IZ)V
    .registers 10
    .param p1, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "insets"    # Ljava/lang/Object;
    .param p3, "drawerGravity"    # I
    .param p4, "topOnly"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 107
    move-object v0, p2

    check-cast v0, Landroid/view/WindowInsets;

    .line 108
    .local v0, "wi":Landroid/view/WindowInsets;
    const/4 v2, 0x3

    if-ne p3, v2, :cond_2e

    .line 109
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    .line 113
    :cond_17
    :goto_17
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 114
    if-eqz p4, :cond_42

    :goto_1f
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 115
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 116
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 117
    return-void

    .line 110
    :cond_2e
    const/4 v2, 0x5

    if-ne p3, v2, :cond_17

    .line 111
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_17

    .line 114
    :cond_42
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    goto :goto_1f
.end method

.method private dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "insets"    # Ljava/lang/Object;
    .param p3, "drawerGravity"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 96
    move-object v0, p2

    check-cast v0, Landroid/view/WindowInsets;

    .line 97
    .local v0, "wi":Landroid/view/WindowInsets;
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1b

    .line 98
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    .line 102
    :cond_17
    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 103
    return-void

    .line 99
    :cond_1b
    const/4 v1, 0x5

    if-ne p3, v1, :cond_17

    .line 100
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_17
.end method

.method private getScrimOpacity()F
    .registers 2

    .prologue
    .line 229
    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimOpacity:F

    return v0
.end method

.method private getTopInset(Ljava/lang/Object;)I
    .registers 5
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 120
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_f

    .line 121
    if-eqz p1, :cond_f

    check-cast p1, Landroid/view/WindowInsets;

    .end local p1    # "insets":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    .line 123
    :cond_f
    return v0
.end method

.method private onDrawerAnimationEnd(Z)V
    .registers 4
    .param p1, "opened"    # Z

    .prologue
    const/4 v1, 0x0

    .line 213
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 215
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    .line 216
    if-nez p1, :cond_17

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_17

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 221
    :cond_17
    return-void
.end method

.method private prepareForDrawerOpen(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 253
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    .line 255
    if-eqz p1, :cond_f

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    .line 258
    :cond_f
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->beginTrackingSent:Z

    .line 259
    return-void
.end method

.method private setScrimOpacity(F)V
    .registers 2
    .param p1, "value"    # F

    .prologue
    .line 224
    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimOpacity:F

    .line 225
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->invalidate()V

    .line 226
    return-void
.end method


# virtual methods
.method public cancelCurrentAnimation()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 163
    :cond_c
    return-void
.end method

.method public closeDrawer(Z)V
    .registers 8
    .param p1, "fast"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 192
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->cancelCurrentAnimation()V

    .line 193
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 194
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v3, [Landroid/animation/Animator;

    const-string v2, "drawerPosition"

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    .line 195
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 194
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 197
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 198
    if-eqz p1, :cond_4a

    .line 199
    const/high16 v1, 0x43480000    # 200.0f

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 203
    :goto_3e
    new-instance v1, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$3;-><init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 210
    return-void

    .line 201
    :cond_4a
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_3e
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    if-nez v2, :cond_9

    .line 460
    const/16 v17, 0x0

    .line 504
    :cond_8
    :goto_8
    return v17

    .line 462
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getHeight()I

    move-result v13

    .line 463
    .local v13, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_5b

    const/4 v12, 0x1

    .line 464
    .local v12, "drawingContent":Z
    :goto_16
    const/4 v15, 0x0

    .line 465
    .local v15, "lastVisibleChild":I
    const/4 v10, 0x0

    .local v10, "clipLeft":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getWidth()I

    move-result v11

    .line 467
    .local v11, "clipRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v16

    .line 468
    .local v16, "restoreCount":I
    if-eqz v12, :cond_74

    .line 469
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildCount()I

    move-result v9

    .line 470
    .local v9, "childCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_27
    if-ge v14, v9, :cond_68

    .line 471
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 472
    .local v18, "v":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_3e

    .line 473
    move v15, v14

    .line 475
    :cond_3e
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_58

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_58

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_58

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v2, v13, :cond_5d

    .line 470
    :cond_58
    :goto_58
    add-int/lit8 v14, v14, 0x1

    goto :goto_27

    .line 463
    .end local v9    # "childCount":I
    .end local v10    # "clipLeft":I
    .end local v11    # "clipRight":I
    .end local v12    # "drawingContent":Z
    .end local v14    # "i":I
    .end local v15    # "lastVisibleChild":I
    .end local v16    # "restoreCount":I
    .end local v18    # "v":Landroid/view/View;
    :cond_5b
    const/4 v12, 0x0

    goto :goto_16

    .line 479
    .restart local v9    # "childCount":I
    .restart local v10    # "clipLeft":I
    .restart local v11    # "clipRight":I
    .restart local v12    # "drawingContent":Z
    .restart local v14    # "i":I
    .restart local v15    # "lastVisibleChild":I
    .restart local v16    # "restoreCount":I
    .restart local v18    # "v":Landroid/view/View;
    :cond_5d
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v19

    .line 480
    .local v19, "vright":I
    move/from16 v0, v19

    if-le v0, v10, :cond_58

    .line 481
    move/from16 v10, v19

    goto :goto_58

    .line 484
    .end local v18    # "v":Landroid/view/View;
    .end local v19    # "vright":I
    :cond_68
    if-eqz v10, :cond_74

    .line 485
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getHeight()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2, v11, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 488
    .end local v9    # "childCount":I
    .end local v14    # "i":I
    :cond_74
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v17

    .line 489
    .local v17, "result":Z
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 491
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b8

    if-eqz v12, :cond_b8

    .line 492
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ne v2, v15, :cond_8

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x43190000    # 153.0f

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimOpacity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x18

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 494
    int-to-float v3, v10

    const/4 v4, 0x0

    int-to-float v5, v11

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 496
    :cond_b8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    .line 497
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 498
    .local v8, "alpha":F
    const/4 v2, 0x0

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_8

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    float-to-int v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8
.end method

.method public getDrawerLayout()Landroid/view/View;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDrawerPosition()F
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method public isDrawerOpened()Z
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    return v0
.end method

.method public moveDrawerByX(F)V
    .registers 3
    .param p1, "dx"    # F

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawerPosition(F)V

    .line 136
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 354
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 367
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    .line 368
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildCount()I

    move-result v1

    .line 369
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_65

    .line 370
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_19

    .line 369
    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 376
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 379
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    :try_start_1f
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    if-eq v5, v0, :cond_48

    .line 380
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_42} :catch_43

    goto :goto_16

    .line 384
    :catch_43
    move-exception v2

    .line 385
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_16

    .line 382
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_48
    :try_start_48
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    neg-int v5, v5

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x0

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_64} :catch_43

    goto :goto_16

    .line 388
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_65
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    .line 389
    return-void
.end method

.method protected onMeasure(II)V
    .registers 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 405
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 406
    .local v11, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 408
    .local v8, "heightSize":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setMeasuredDimension(II)V

    .line 409
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-ge v12, v13, :cond_3c

    .line 410
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    .line 411
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sget v13, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v12, v13

    if-ne v8, v12, :cond_61

    .line 412
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    instance-of v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v12, :cond_33

    .line 413
    const/4 v12, 0x0

    sget v13, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setPadding(IIII)V

    .line 415
    :cond_33
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v12, Landroid/graphics/Point;->y:I

    .line 421
    :cond_37
    :goto_37
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    .line 424
    :cond_3c
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastInsets:Ljava/lang/Object;

    if-eqz v12, :cond_73

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v12, v13, :cond_73

    const/4 v1, 0x1

    .line 426
    .local v1, "applyInsets":Z
    :goto_49
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildCount()I

    move-result v3

    .line 427
    .local v3, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4e
    if-ge v9, v3, :cond_f8

    .line 428
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 430
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_75

    .line 427
    :goto_5e
    add-int/lit8 v9, v9, 0x1

    goto :goto_4e

    .line 417
    .end local v1    # "applyInsets":Z
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childCount":I
    .end local v9    # "i":I
    :cond_61
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    instance-of v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v12, :cond_37

    .line 418
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setPadding(IIII)V

    goto :goto_37

    .line 424
    :cond_73
    const/4 v1, 0x0

    goto :goto_49

    .line 434
    .restart local v1    # "applyInsets":Z
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "childCount":I
    .restart local v9    # "i":I
    :cond_75
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 436
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v1, :cond_8e

    .line 437
    invoke-virtual {v2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v12

    if-eqz v12, :cond_b2

    .line 438
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastInsets:Ljava/lang/Object;

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v13}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    .line 444
    :cond_8e
    :goto_8e
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    if-eq v12, v2, :cond_cd

    .line 445
    iget v12, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v12, v11, v12

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 446
    .local v5, "contentWidthSpec":I
    iget v12, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v12, v8, v12

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 447
    .local v4, "contentHeightSpec":I
    invoke-virtual {v2, v5, v4}, Landroid/view/View;->measure(II)V

    goto :goto_5e

    .line 439
    .end local v4    # "contentHeightSpec":I
    .end local v5    # "contentWidthSpec":I
    :cond_b2
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_8e

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastInsets:Ljava/lang/Object;

    iget v14, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v12, v15, :cond_cb

    const/4 v12, 0x1

    :goto_c5
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v14, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;IZ)V

    goto :goto_8e

    :cond_cb
    const/4 v12, 0x0

    goto :goto_c5

    .line 449
    :cond_cd
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 450
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->minDrawerMargin:I

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v12, v13}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildMeasureSpec(III)I

    move-result v7

    .line 451
    .local v7, "drawerWidthSpec":I
    iget v12, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v12, v13}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildMeasureSpec(III)I

    move-result v6

    .line 452
    .local v6, "drawerHeightSpec":I
    invoke-virtual {v2, v7, v6}, Landroid/view/View;->measure(II)V

    goto/16 :goto_5e

    .line 455
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "drawerHeightSpec":I
    .end local v7    # "drawerWidthSpec":I
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_f8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x2

    const v11, 0x455ac000    # 3500.0f

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 273
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v5

    if-nez v5, :cond_1eb

    .line 274
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    if-eqz v5, :cond_2d

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v8, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2d

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez v5, :cond_2d

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_2c

    .line 276
    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    .line 349
    :cond_2c
    :goto_2c
    return v6

    .line 280
    :cond_2d
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowOpenDrawer:Z

    if-eqz v5, :cond_73

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_73

    .line 281
    if-eqz p1, :cond_76

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_49

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_76

    :cond_49
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez v5, :cond_76

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    if-nez v5, :cond_76

    .line 282
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingPointerId:I

    .line 283
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingY:I

    .line 286
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->cancelCurrentAnimation()V

    .line 287
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_73

    .line 288
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 347
    :cond_73
    :goto_73
    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    goto :goto_2c

    .line 290
    :cond_76
    if-eqz p1, :cond_130

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_130

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v8, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingPointerId:I

    if-ne v5, v8, :cond_130

    .line 291
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_90

    .line 292
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 294
    :cond_90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v7, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v1, v5

    .line 295
    .local v1, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v7, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingY:I

    sub-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v2, v5

    .line 296
    .local v2, "dy":F
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 297
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    if-eqz v5, :cond_101

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez v5, :cond_101

    cmpl-float v5, v1, v10

    if-lez v5, :cond_d3

    const/high16 v5, 0x40400000    # 3.0f

    div-float v5, v1, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_d3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v7, 0x3e4ccccd

    invoke-static {v7, v6}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v7

    cmpl-float v5, v5, v7

    if-gez v5, :cond_f2

    :cond_d3
    cmpg-float v5, v1, v10

    if-gez v5, :cond_101

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_101

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v7, 0x3ecccccd

    invoke-static {v7, v6}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v7

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_101

    .line 298
    :cond_f2
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->prepareForDrawerOpen(Landroid/view/MotionEvent;)V

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    .line 300
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_73

    .line 301
    :cond_101
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-eqz v5, :cond_73

    .line 302
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->beginTrackingSent:Z

    if-nez v5, :cond_124

    .line 303
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_122

    .line 304
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 306
    :cond_122
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->beginTrackingSent:Z

    .line 308
    :cond_124
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->moveDrawerByX(F)V

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    goto/16 :goto_73

    .line 311
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_130
    if-eqz p1, :cond_150

    if-eqz p1, :cond_73

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v8, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingPointerId:I

    if-ne v5, v8, :cond_73

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v8, 0x3

    if-eq v5, v8, :cond_150

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v6, :cond_150

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v8, 0x6

    if-ne v5, v8, :cond_73

    .line 312
    :cond_150
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_15a

    .line 313
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 315
    :cond_15a
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    invoke-virtual {v5, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 329
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez v5, :cond_178

    iget v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_1c3

    iget v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1c3

    .line 330
    :cond_178
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 331
    .local v3, "velX":F
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    .line 332
    .local v4, "velY":F
    iget v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    cmpg-float v5, v5, v8

    if-gez v5, :cond_1a4

    cmpg-float v5, v3, v11

    if-ltz v5, :cond_1b0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v5, v5, v8

    if-ltz v5, :cond_1b0

    :cond_1a4
    cmpg-float v5, v3, v10

    if-gez v5, :cond_1d5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_1d5

    :cond_1b0
    move v0, v6

    .line 333
    .local v0, "backAnimation":Z
    :goto_1b1
    if-nez v0, :cond_1d9

    .line 334
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    if-nez v5, :cond_1d7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_1d7

    move v5, v6

    :goto_1c0
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->openDrawer(Z)V

    .line 339
    .end local v0    # "backAnimation":Z
    .end local v3    # "velX":F
    .end local v4    # "velY":F
    :cond_1c3
    :goto_1c3
    iput-boolean v7, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    .line 340
    iput-boolean v7, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    .line 341
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_73

    .line 342
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 343
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_73

    .restart local v3    # "velX":F
    .restart local v4    # "velY":F
    :cond_1d5
    move v0, v7

    .line 332
    goto :goto_1b1

    .restart local v0    # "backAnimation":Z
    :cond_1d7
    move v5, v7

    .line 334
    goto :goto_1c0

    .line 336
    :cond_1d9
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    if-eqz v5, :cond_1e9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_1e9

    :goto_1e5
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_1c3

    :cond_1e9
    move v6, v7

    goto :goto_1e5

    .end local v0    # "backAnimation":Z
    .end local v3    # "velX":F
    .end local v4    # "velY":F
    :cond_1eb
    move v6, v7

    .line 349
    goto/16 :goto_2c
.end method

.method public openDrawer(Z)V
    .registers 8
    .param p1, "fast"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 166
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowOpenDrawer:Z

    if-nez v1, :cond_7

    .line 189
    :goto_6
    return-void

    .line 169
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_22

    .line 170
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 172
    :cond_22
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->cancelCurrentAnimation()V

    .line 173
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 174
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v3, [Landroid/animation/Animator;

    const-string v2, "drawerPosition"

    new-array v3, v3, [F

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 175
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    if-eqz p1, :cond_7a

    .line 177
    const/high16 v1, 0x43480000    # 200.0f

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 181
    :goto_6c
    new-instance v1, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$2;-><init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 187
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 188
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    goto :goto_6

    .line 179
    :cond_7a
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_6c
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 359
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez v0, :cond_c

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 362
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 363
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 393
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    if-nez v0, :cond_7

    .line 398
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 400
    :cond_7
    return-void
.end method

.method public setAllowDrawContent(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 266
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    if-eq v0, p1, :cond_9

    .line 267
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    .line 268
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->invalidate()V

    .line 270
    :cond_9
    return-void
.end method

.method public setAllowOpenDrawer(ZZ)V
    .registers 5
    .param p1, "value"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v1, 0x0

    .line 241
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowOpenDrawer:Z

    .line 242
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowOpenDrawer:Z

    if-nez v0, :cond_16

    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_16

    .line 243
    if-nez p2, :cond_17

    .line 244
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawerPosition(F)V

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onDrawerAnimationEnd(Z)V

    .line 250
    :cond_16
    :goto_16
    return-void

    .line 247
    :cond_17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_16
.end method

.method public setDrawerLayout(Landroid/view/ViewGroup;)V
    .registers 4
    .param p1, "layout"    # Landroid/view/ViewGroup;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;)V

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_13

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 132
    :cond_13
    return-void
.end method

.method public setDrawerPosition(F)V
    .registers 6
    .param p1, "value"    # F

    .prologue
    const/4 v3, 0x0

    .line 139
    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    .line 140
    iget v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_42

    .line 141
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    .line 145
    :cond_19
    :goto_19
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    iget v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 147
    iget v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4b

    const/4 v0, 0x0

    .line 148
    .local v0, "newVisibility":I
    :goto_27
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_34

    .line 149
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 151
    :cond_34
    iget v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setScrimOpacity(F)V

    .line 152
    return-void

    .line 142
    .end local v0    # "newVisibility":I
    :cond_42
    iget v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_19

    .line 143
    iput v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    goto :goto_19

    .line 147
    :cond_4b
    const/16 v0, 0x8

    goto :goto_27
.end method

.method public setParentActionBarLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .registers 2
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 237
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 238
    return-void
.end method

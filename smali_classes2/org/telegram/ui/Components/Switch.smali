.class public Lorg/telegram/ui/Components/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Switch$Insets;
    }
.end annotation


# static fields
.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private attachedToWindow:Z

.field private mMinFlingVelocity:I

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private thumbPosition:F

.field private wasLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 96
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020261

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_27

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 105
    :cond_27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020264

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3d

    .line 107
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 110
    :cond_3d
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6c

    .line 111
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    .line 116
    :goto_4d
    iput v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchPadding:I

    .line 117
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Switch;->mSplitTrack:Z

    .line 119
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 120
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    .line 121
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/Switch;->mMinFlingVelocity:I

    .line 123
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->refreshDrawableState()V

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 125
    return-void

    .line 113
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    :cond_6c
    iput v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    goto :goto_4d
.end method

.method private animateThumbToCheckedState(Z)V
    .registers 6
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 354
    if-eqz p1, :cond_1f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 355
    .local v0, "targetPosition":F
    :goto_4
    const-string v1, "thumbPosition"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 356
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 357
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 358
    return-void

    .line 354
    .end local v0    # "targetPosition":F
    :cond_1f
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private cancelPositionAnimator()V
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 364
    :cond_9
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 326
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 327
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 328
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 329
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 330
    return-void
.end method

.method public static constrain(FFF)F
    .registers 4
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 59
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .end local p1    # "low":F
    :goto_4
    return p1

    .restart local p1    # "low":F
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    goto :goto_4

    :cond_b
    move p1, p0

    goto :goto_4
.end method

.method private getTargetCheckedState()Z
    .registers 3

    .prologue
    .line 367
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private getThumbOffset()I
    .registers 4

    .prologue
    .line 607
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_15

    .line 608
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    sub-float v0, v1, v2

    .line 612
    .local v0, "position":F
    :goto_a
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 610
    .end local v0    # "position":F
    :cond_15
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    .restart local v0    # "position":F
    goto :goto_a
.end method

.method private getThumbScrollRange()I
    .registers 5

    .prologue
    .line 616
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_26

    .line 617
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 618
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 621
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_23

    .line 622
    sget-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    .line 627
    .local v0, "insets":Lorg/telegram/ui/Components/Switch$Insets;
    :goto_11
    iget v2, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    iget v3, p0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    sub-int/2addr v2, v3

    .line 629
    .end local v0    # "insets":Lorg/telegram/ui/Components/Switch$Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :goto_22
    return v2

    .line 624
    .restart local v1    # "padding":Landroid/graphics/Rect;
    :cond_23
    sget-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    .restart local v0    # "insets":Lorg/telegram/ui/Components/Switch$Insets;
    goto :goto_11

    .line 629
    .end local v0    # "insets":Lorg/telegram/ui/Components/Switch$Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_26
    const/4 v2, 0x0

    goto :goto_22
.end method

.method private hitThumb(FF)Z
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 241
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getThumbOffset()I

    move-result v2

    .line 243
    .local v2, "thumbOffset":I
    iget-object v5, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 244
    iget v5, p0, Lorg/telegram/ui/Components/Switch;->mSwitchTop:I

    iget v6, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    sub-int v4, v5, v6

    .line 245
    .local v4, "thumbTop":I
    iget v5, p0, Lorg/telegram/ui/Components/Switch;->mSwitchLeft:I

    add-int/2addr v5, v2

    iget v6, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    sub-int v1, v5, v6

    .line 246
    .local v1, "thumbLeft":I
    iget v5, p0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    add-int v3, v5, v6

    .line 247
    .local v3, "thumbRight":I
    iget v5, p0, Lorg/telegram/ui/Components/Switch;->mSwitchBottom:I

    iget v6, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    add-int v0, v5, v6

    .line 248
    .local v0, "thumbBottom":I
    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_45

    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_45

    int-to-float v5, v4

    cmpl-float v5, p2, v5

    if-lez v5, :cond_45

    int-to-float v5, v0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_45

    const/4 v5, 0x1

    :goto_44
    return v5

    :cond_45
    const/4 v5, 0x0

    goto :goto_44
.end method

.method private setThumbPosition(F)V
    .registers 2
    .param p1, "position"    # F

    .prologue
    .line 371
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    .line 372
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->invalidate()V

    .line 373
    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 333
    iput v3, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_3b

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3b

    move v0, v1

    .line 337
    .local v0, "commitChange":Z
    :goto_12
    if-eqz v0, :cond_4a

    .line 338
    iget-object v4, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 339
    iget-object v4, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 340
    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/Switch;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_45

    .line 341
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_3f

    cmpg-float v4, v2, v6

    if-gez v4, :cond_3d

    .line 349
    .end local v2    # "xvel":F
    .local v1, "newState":Z
    :cond_34
    :goto_34
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 350
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 351
    return-void

    .end local v0    # "commitChange":Z
    .end local v1    # "newState":Z
    :cond_3b
    move v0, v3

    .line 335
    goto :goto_12

    .restart local v0    # "commitChange":Z
    .restart local v2    # "xvel":F
    :cond_3d
    move v1, v3

    .line 341
    goto :goto_34

    :cond_3f
    cmpl-float v4, v2, v6

    if-gtz v4, :cond_34

    move v1, v3

    goto :goto_34

    .line 343
    :cond_45
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_34

    .line 346
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :cond_4a
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_34
.end method


# virtual methods
.method public checkColorFilters()V
    .registers 5

    .prologue
    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 425
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "switchTrackChecked"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_14
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 427
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_38

    .line 428
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "switchThumbChecked"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_30
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 430
    :cond_38
    return-void

    .line 425
    :cond_39
    const-string v0, "switchTrack"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_14

    .line 428
    :cond_40
    const-string v0, "switchThumb"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_30
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 23
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 490
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 491
    .local v5, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/ui/Components/Switch;->mSwitchLeft:I

    .line 492
    .local v7, "switchLeft":I
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/Components/Switch;->mSwitchTop:I

    .line 493
    .local v9, "switchTop":I
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/Components/Switch;->mSwitchRight:I

    .line 494
    .local v8, "switchRight":I
    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Components/Switch;->mSwitchBottom:I

    .line 496
    .local v6, "switchBottom":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Switch;->getThumbOffset()I

    move-result v18

    add-int v10, v7, v18

    .line 499
    .local v10, "thumbInitialLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11f

    .line 500
    sget-object v11, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    .line 505
    .local v11, "thumbInsets":Lorg/telegram/ui/Components/Switch$Insets;
    :goto_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c0

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 508
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v10, v10, v18

    .line 510
    move v15, v7

    .line 511
    .local v15, "trackLeft":I
    move/from16 v17, v9

    .line 512
    .local v17, "trackTop":I
    move/from16 v16, v8

    .line 513
    .local v16, "trackRight":I
    move v14, v6

    .line 514
    .local v14, "trackBottom":I
    sget-object v18, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_b1

    .line 515
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_63

    .line 516
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int v15, v15, v18

    .line 518
    :cond_63
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->top:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7d

    .line 519
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->top:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int v17, v17, v18

    .line 521
    :cond_7d
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_97

    .line 522
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v16, v16, v18

    .line 524
    :cond_97
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->bottom:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b1

    .line 525
    iget v0, v11, Lorg/telegram/ui/Components/Switch$Insets;->bottom:I

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v14, v14, v18

    .line 528
    :cond_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 531
    .end local v14    # "trackBottom":I
    .end local v15    # "trackLeft":I
    .end local v16    # "trackRight":I
    .end local v17    # "trackTop":I
    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11b

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 534
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v12, v10, v18

    .line 535
    .local v12, "thumbLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    move/from16 v18, v0

    add-int v18, v18, v10

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v13, v18, v19

    .line 536
    .local v13, "thumbRight":I
    sget v18, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v19, 0x3fc00000    # 1.5f

    cmpl-float v18, v18, v19

    if-nez v18, :cond_123

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 537
    .local v4, "offset":I
    :goto_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    add-int v19, v9, v4

    add-int v20, v6, v4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v13, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 539
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Switch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 540
    .local v3, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_11b

    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_11b

    .line 541
    invoke-virtual {v3, v12, v9, v13, v6}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 545
    .end local v3    # "background":Landroid/graphics/drawable/Drawable;
    .end local v4    # "offset":I
    .end local v12    # "thumbLeft":I
    .end local v13    # "thumbRight":I
    :cond_11b
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 546
    return-void

    .line 502
    .end local v11    # "thumbInsets":Lorg/telegram/ui/Components/Switch$Insets;
    :cond_11f
    sget-object v11, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    .restart local v11    # "thumbInsets":Lorg/telegram/ui/Components/Switch$Insets;
    goto/16 :goto_24

    .line 536
    .restart local v12    # "thumbLeft":I
    .restart local v13    # "thumbRight":I
    :cond_123
    const/4 v4, 0x0

    goto :goto_f5
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 662
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 668
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 671
    :cond_15
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 644
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 646
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getDrawableState()[I

    move-result-object v0

    .line 648
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 649
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 652
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    .line 653
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 656
    :cond_19
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->invalidate()V

    .line 657
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    .prologue
    .line 591
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_9

    .line 592
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 594
    :goto_8
    return v0

    :cond_9
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    goto :goto_8
.end method

.method public getCompoundPaddingRight()I
    .registers 3

    .prologue
    .line 599
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_9

    .line 600
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    .line 602
    :goto_8
    return v0

    :cond_9
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    goto :goto_8
.end method

.method public getSplitTrack()Z
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbPosition()F
    .registers 2

    .prologue
    .line 376
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    return v0
.end method

.method public getThumbTextPadding()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 680
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 683
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 686
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 687
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 690
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 694
    :cond_29
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 386
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    .line 388
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    .line 389
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 393
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 394
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    .line 395
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->wasLayout:Z

    .line 396
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 550
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 552
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 553
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v6, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 554
    .local v6, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_49

    .line 555
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 560
    :goto_c
    iget v4, p0, Lorg/telegram/ui/Components/Switch;->mSwitchTop:I

    .line 561
    .local v4, "switchTop":I
    iget v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchBottom:I

    .line 563
    .local v3, "switchBottom":I
    iget-object v5, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 564
    .local v5, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_3c

    .line 565
    iget-boolean v7, p0, Lorg/telegram/ui/Components/Switch;->mSplitTrack:Z

    if-eqz v7, :cond_4d

    if-eqz v5, :cond_4d

    .line 566
    sget-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    .line 567
    .local v0, "insets":Lorg/telegram/ui/Components/Switch$Insets;
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 568
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v0, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    add-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 569
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v0, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    sub-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 571
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 572
    .local v2, "saveCount":I
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 573
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 574
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 580
    .end local v0    # "insets":Lorg/telegram/ui/Components/Switch$Insets;
    .end local v2    # "saveCount":I
    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 582
    .restart local v2    # "saveCount":I
    if-eqz v5, :cond_45

    .line 583
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 586
    :cond_45
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 587
    return-void

    .line 557
    .end local v2    # "saveCount":I
    .end local v3    # "switchBottom":I
    .end local v4    # "switchTop":I
    .end local v5    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_49
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_c

    .line 576
    .restart local v3    # "switchBottom":I
    .restart local v4    # "switchTop":I
    .restart local v5    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4d
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3c
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 434
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 436
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/Components/Switch;->wasLayout:Z

    .line 437
    const/4 v1, 0x0

    .line 438
    .local v1, "opticalInsetLeft":I
    const/4 v2, 0x0

    .line 439
    .local v2, "opticalInsetRight":I
    iget-object v8, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2d

    .line 440
    iget-object v7, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 441
    .local v7, "trackPadding":Landroid/graphics/Rect;
    iget-object v8, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_57

    .line 442
    iget-object v8, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 447
    :goto_17
    sget-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    .line 448
    .local v0, "insets":Lorg/telegram/ui/Components/Switch$Insets;
    const/4 v8, 0x0

    iget v9, v0, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 449
    const/4 v8, 0x0

    iget v9, v0, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 454
    .end local v0    # "insets":Lorg/telegram/ui/Components/Switch$Insets;
    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_2d
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_5b

    .line 455
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingLeft()I

    move-result v8

    add-int v4, v8, v1

    .line 456
    .local v4, "switchLeft":I
    iget v8, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v1

    sub-int v5, v8, v2

    .line 464
    .local v5, "switchRight":I
    :goto_3d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getGravity()I

    move-result v8

    and-int/lit8 v8, v8, 0x70

    sparse-switch v8, :sswitch_data_98

    .line 467
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingTop()I

    move-result v6

    .line 468
    .local v6, "switchTop":I
    iget v8, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    add-int v3, v6, v8

    .line 482
    .local v3, "switchBottom":I
    :goto_4e
    iput v4, p0, Lorg/telegram/ui/Components/Switch;->mSwitchLeft:I

    .line 483
    iput v6, p0, Lorg/telegram/ui/Components/Switch;->mSwitchTop:I

    .line 484
    iput v3, p0, Lorg/telegram/ui/Components/Switch;->mSwitchBottom:I

    .line 485
    iput v5, p0, Lorg/telegram/ui/Components/Switch;->mSwitchRight:I

    .line 486
    return-void

    .line 444
    .end local v3    # "switchBottom":I
    .end local v4    # "switchLeft":I
    .end local v5    # "switchRight":I
    .end local v6    # "switchTop":I
    .restart local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_57
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_17

    .line 458
    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_5b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v5, v8, v2

    .line 459
    .restart local v5    # "switchRight":I
    iget v8, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    sub-int v8, v5, v8

    add-int/2addr v8, v1

    add-int v4, v8, v2

    .restart local v4    # "switchLeft":I
    goto :goto_3d

    .line 472
    :sswitch_6e
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v8, v9

    .line 473
    .restart local v6    # "switchTop":I
    iget v8, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    add-int v3, v6, v8

    .line 474
    .restart local v3    # "switchBottom":I
    goto :goto_4e

    .line 477
    .end local v3    # "switchBottom":I
    .end local v6    # "switchTop":I
    :sswitch_89
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .line 478
    .restart local v3    # "switchBottom":I
    iget v8, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    sub-int v6, v3, v8

    .restart local v6    # "switchTop":I
    goto :goto_4e

    .line 464
    :sswitch_data_98
    .sparse-switch
        0x10 -> :sswitch_6e
        0x50 -> :sswitch_89
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .registers 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 195
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 198
    .local v2, "padding":Landroid/graphics/Rect;
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_66

    .line 199
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 200
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v10, v11

    .line 201
    .local v8, "thumbWidth":I
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 208
    .local v7, "thumbHeight":I
    :goto_1e
    iput v8, p0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    .line 211
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_69

    .line 212
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 213
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 219
    .local v9, "trackHeight":I
    :goto_2f
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 220
    .local v3, "paddingLeft":I
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 221
    .local v4, "paddingRight":I
    iget-object v10, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_45

    .line 222
    sget-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    .line 223
    .local v0, "inset":Lorg/telegram/ui/Components/Switch$Insets;
    iget v10, v0, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 224
    iget v10, v0, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 227
    .end local v0    # "inset":Lorg/telegram/ui/Components/Switch$Insets;
    :cond_45
    iget v10, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    iget v11, p0, Lorg/telegram/ui/Components/Switch;->mThumbWidth:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v3

    add-int/2addr v11, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 228
    .local v6, "switchWidth":I
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 229
    .local v5, "switchHeight":I
    iput v6, p0, Lorg/telegram/ui/Components/Switch;->mSwitchWidth:I

    .line 230
    iput v5, p0, Lorg/telegram/ui/Components/Switch;->mSwitchHeight:I

    .line 232
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 234
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getMeasuredHeight()I

    move-result v1

    .line 235
    .local v1, "measuredHeight":I
    if-ge v1, v5, :cond_65

    .line 236
    invoke-virtual {p0, v6, v5}, Lorg/telegram/ui/Components/Switch;->setMeasuredDimension(II)V

    .line 238
    :cond_65
    return-void

    .line 203
    .end local v1    # "measuredHeight":I
    .end local v3    # "paddingLeft":I
    .end local v4    # "paddingRight":I
    .end local v5    # "switchHeight":I
    .end local v6    # "switchWidth":I
    .end local v7    # "thumbHeight":I
    .end local v8    # "thumbWidth":I
    .end local v9    # "trackHeight":I
    :cond_66
    const/4 v8, 0x0

    .line 204
    .restart local v8    # "thumbWidth":I
    const/4 v7, 0x0

    .restart local v7    # "thumbHeight":I
    goto :goto_1e

    .line 215
    :cond_69
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 216
    const/4 v9, 0x0

    .restart local v9    # "trackHeight":I
    goto :goto_2f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 253
    iget-object v9, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 255
    .local v0, "action":I
    packed-switch v0, :pswitch_data_b6

    .line 322
    :cond_11
    :goto_11
    :pswitch_11
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_15
    return v7

    .line 257
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 258
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 259
    .local v6, "y":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-direct {p0, v5, v6}, Lorg/telegram/ui/Components/Switch;->hitThumb(FF)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 260
    iput v8, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    .line 261
    iput v5, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    .line 262
    iput v6, p0, Lorg/telegram/ui/Components/Switch;->mTouchY:F

    goto :goto_11

    .line 268
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_31
    iget v9, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    packed-switch v9, :pswitch_data_c2

    goto :goto_11

    .line 273
    :pswitch_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 274
    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 275
    .restart local v6    # "y":F
    iget v7, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_5d

    iget v7, p0, Lorg/telegram/ui/Components/Switch;->mTouchY:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lorg/telegram/ui/Components/Switch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_11

    .line 276
    :cond_5d
    iput v11, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    .line 277
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 278
    iput v5, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    .line 279
    iput v6, p0, Lorg/telegram/ui/Components/Switch;->mTouchY:F

    move v7, v8

    .line 280
    goto :goto_15

    .line 286
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_6c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 287
    .restart local v5    # "x":F
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getThumbScrollRange()I

    move-result v4

    .line 288
    .local v4, "thumbScrollRange":I
    iget v9, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    sub-float v3, v5, v9

    .line 290
    .local v3, "thumbScrollOffset":F
    if-eqz v4, :cond_96

    .line 291
    int-to-float v9, v4

    div-float v1, v3, v9

    .line 295
    .local v1, "dPos":F
    :goto_7d
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_82

    .line 296
    neg-float v1, v1

    .line 298
    :cond_82
    iget v9, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    add-float/2addr v9, v1

    invoke-static {v9, v10, v7}, Lorg/telegram/ui/Components/Switch;->constrain(FFF)F

    move-result v2

    .line 299
    .local v2, "newPos":F
    iget v7, p0, Lorg/telegram/ui/Components/Switch;->thumbPosition:F

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_94

    .line 300
    iput v5, p0, Lorg/telegram/ui/Components/Switch;->mTouchX:F

    .line 301
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Switch;->setThumbPosition(F)V

    :cond_94
    move v7, v8

    .line 303
    goto :goto_15

    .line 293
    .end local v1    # "dPos":F
    .end local v2    # "newPos":F
    :cond_96
    cmpl-float v9, v3, v10

    if-lez v9, :cond_9c

    move v1, v7

    .restart local v1    # "dPos":F
    :goto_9b
    goto :goto_7d

    .end local v1    # "dPos":F
    :cond_9c
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_9b

    .line 311
    .end local v3    # "thumbScrollOffset":F
    .end local v4    # "thumbScrollRange":I
    .end local v5    # "x":F
    :pswitch_9f
    iget v7, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    if-ne v7, v11, :cond_ac

    .line 312
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 313
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v7, v8

    .line 314
    goto/16 :goto_15

    .line 316
    :cond_ac
    const/4 v7, 0x0

    iput v7, p0, Lorg/telegram/ui/Components/Switch;->mTouchMode:I

    .line 317
    iget-object v7, p0, Lorg/telegram/ui/Components/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_11

    .line 255
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_9f
        :pswitch_31
        :pswitch_9f
    .end packed-switch

    .line 268
    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_37
        :pswitch_6c
    .end packed-switch
.end method

.method public resetLayout()V
    .registers 2

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->wasLayout:Z

    .line 400
    return-void
.end method

.method public setChecked(Z)V
    .registers 6
    .param p1, "checked"    # Z

    .prologue
    .line 404
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 406
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result p1

    .line 408
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->wasLayout:Z

    if-eqz v0, :cond_43

    .line 409
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Switch;->animateThumbToCheckedState(Z)V

    .line 415
    :goto_12
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2a

    .line 416
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p1, :cond_50

    const-string v0, "switchTrackChecked"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_22
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 418
    :cond_2a
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_42

    .line 419
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p1, :cond_57

    const-string v0, "switchThumbChecked"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_3a
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 421
    :cond_42
    return-void

    .line 411
    :cond_43
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->cancelPositionAnimator()V

    .line 412
    if-eqz p1, :cond_4e

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4a
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Switch;->setThumbPosition(F)V

    goto :goto_12

    :cond_4e
    const/4 v0, 0x0

    goto :goto_4a

    .line 416
    :cond_50
    const-string v0, "switchTrack"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_22

    .line 419
    :cond_57
    const-string v0, "switchThumb"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_3a
.end method

.method public setSplitTrack(Z)V
    .registers 2
    .param p1, "splitTrack"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Switch;->mSplitTrack:Z

    .line 186
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->invalidate()V

    .line 187
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .registers 2
    .param p1, "pixels"    # I

    .prologue
    .line 137
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchMinWidth:I

    .line 138
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    .line 139
    return-void
.end method

.method public setSwitchPadding(I)V
    .registers 2
    .param p1, "pixels"    # I

    .prologue
    .line 128
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->mSwitchPadding:I

    .line 129
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    .line 130
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 173
    :cond_a
    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    if-eqz p1, :cond_11

    .line 175
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 177
    :cond_11
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    .line 178
    return-void
.end method

.method public setThumbTextPadding(I)V
    .registers 2
    .param p1, "pixels"    # I

    .prologue
    .line 146
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->mThumbTextPadding:I

    .line 147
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    .line 148
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 158
    :cond_a
    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    if-eqz p1, :cond_11

    .line 160
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 162
    :cond_11
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    .line 163
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 382
    return-void

    .line 381
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 675
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

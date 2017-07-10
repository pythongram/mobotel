.class public Lorg/telegram/ui/Components/Crop/CropGestureDetector;
.super Ljava/lang/Object;
.source "CropGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mActivePointerIndex:I

.field private mDetector:Landroid/view/ScaleGestureDetector;

.field private mIsDragging:Z

.field mLastTouchX:F

.field mLastTouchY:F

.field private mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

.field final mMinimumVelocity:F

.field final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private started:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 37
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mMinimumVelocity:F

    .line 38
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mTouchSlop:F

    .line 40
    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    .line 41
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    .line 43
    new-instance v1, Lorg/telegram/ui/Components/Crop/CropGestureDetector$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector$1;-><init>(Lorg/telegram/ui/Components/Crop/CropGestureDetector;)V

    .line 67
    .local v1, "mScaleListener":Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    new-instance v2, Landroid/view/ScaleGestureDetector;

    invoke-direct {v2, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Crop/CropGestureDetector;)Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    .prologue
    .line 12
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    return-object v0
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    :try_start_0
    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 74
    :goto_6
    return v1

    .line 73
    :catch_7
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    goto :goto_6
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    :try_start_0
    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 82
    :goto_6
    return v1

    .line 81
    :catch_7
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_6
.end method

.method public isDragging()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    return v0
.end method

.method public isScaling()Z
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "i":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    packed-switch v9, :pswitch_data_136

    .line 127
    :cond_f
    :goto_f
    :pswitch_f
    iget v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_16

    .line 128
    iget v2, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    .line 130
    :cond_16
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerIndex:I

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_148

    .line 217
    :cond_23
    :goto_23
    const/4 v9, 0x1

    :goto_24
    return v9

    .line 105
    :pswitch_25
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    goto :goto_f

    .line 109
    :pswitch_2d
    const/4 v9, -0x1

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    goto :goto_f

    .line 112
    :pswitch_31
    const v9, 0xff00

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/2addr v9, v10

    shr-int/lit8 v4, v9, 0x8

    .line 113
    .local v4, "pointerIndex":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    if-ne v9, v10, :cond_f

    .line 115
    if-nez v4, :cond_59

    .line 116
    const/4 v3, 0x1

    .line 120
    .local v3, "newPointerIndex":I
    :goto_46
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mActivePointerId:I

    .line 121
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    .line 122
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    goto :goto_f

    .line 118
    .end local v3    # "newPointerIndex":I
    :cond_59
    const/4 v3, 0x0

    .restart local v3    # "newPointerIndex":I
    goto :goto_46

    .line 135
    .end local v3    # "newPointerIndex":I
    .end local v4    # "pointerIndex":I
    :pswitch_5b
    iget-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    if-nez v9, :cond_82

    .line 136
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 137
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_6e

    .line 138
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 141
    :cond_6e
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    .line 142
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    .line 143
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    .line 145
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    .line 146
    const/4 v9, 0x1

    goto :goto_24

    .line 149
    :cond_82
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v7

    .line 150
    .local v7, "x":F
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v8

    .line 151
    .local v8, "y":F
    iget v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    sub-float v0, v7, v9

    .local v0, "dx":F
    iget v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    sub-float v1, v8, v9

    .line 153
    .local v1, "dy":F
    iget-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    if-nez v9, :cond_aa

    .line 156
    mul-float v9, v0, v0

    mul-float v10, v1, v1

    add-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v9, v10

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mTouchSlop:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_c2

    const/4 v9, 0x1

    :goto_a8
    iput-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    .line 159
    :cond_aa
    iget-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    if-eqz v9, :cond_23

    .line 160
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    invoke-interface {v9, v0, v1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;->onDrag(FF)V

    .line 161
    iput v7, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    .line 162
    iput v8, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    .line 164
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_23

    .line 165
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_23

    .line 156
    :cond_c2
    const/4 v9, 0x0

    goto :goto_a8

    .line 173
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_c4
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_d0

    .line 174
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 175
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 177
    :cond_d0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    .line 178
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    goto/16 :goto_23

    .line 183
    :pswitch_d8
    iget-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    if-eqz v9, :cond_124

    .line 184
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_121

    .line 185
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    .line 186
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    .line 189
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 190
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 192
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .local v5, "vX":F
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 193
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    .line 197
    .local v6, "vY":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mMinimumVelocity:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_121

    .line 198
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchX:F

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mLastTouchY:F

    neg-float v12, v5

    neg-float v13, v6

    invoke-interface {v9, v10, v11, v12, v13}, Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;->onFling(FFFF)V

    .line 203
    .end local v5    # "vX":F
    .end local v6    # "vY":F
    :cond_121
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mIsDragging:Z

    .line 207
    :cond_124
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_130

    .line 208
    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 209
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 212
    :cond_130
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->started:Z

    goto/16 :goto_23

    .line 103
    nop

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2d
        :pswitch_f
        :pswitch_2d
        :pswitch_f
        :pswitch_f
        :pswitch_31
    .end packed-switch

    .line 132
    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_d8
        :pswitch_5b
        :pswitch_c4
    .end packed-switch
.end method

.method public setOnGestureListener(Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;)V
    .registers 2
    .param p1, "listener"    # Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->mListener:Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;

    .line 88
    return-void
.end method

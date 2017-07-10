.class Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    .prologue
    .line 304
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 307
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v5, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 311
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 312
    .local v0, "action":I
    if-nez v0, :cond_95

    .line 313
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 314
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 315
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 316
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 317
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_81

    .line 318
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-virtual {v5, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object v1

    .line 319
    .local v1, "animation":Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;
    if-eqz v1, :cond_81

    .line 320
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget v7, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v6, v7

    iput v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 321
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget v7, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v6, v7

    iput v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 322
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5, v6, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)I

    .line 323
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v6, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 324
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->clearView(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 326
    :cond_6f
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget v7, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    .line 327
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v5, p2, v6, v4}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 344
    .end local v1    # "animation":Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_81
    :goto_81
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_8e

    .line 345
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 347
    :cond_8e
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_bb

    :goto_94
    return v3

    .line 330
    :cond_95
    const/4 v5, 0x3

    if-eq v0, v5, :cond_9a

    if-ne v0, v3, :cond_a5

    .line 331
    :cond_9a
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iput v6, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 332
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto :goto_81

    .line 333
    :cond_a5
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-eq v5, v6, :cond_81

    .line 336
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v5, v5, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 340
    .local v2, "index":I
    if-ltz v2, :cond_81

    .line 341
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-virtual {v5, v0, p2, v2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    goto :goto_81

    .end local v2    # "index":I
    :cond_bb
    move v3, v4

    .line 347
    goto :goto_94
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 5
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 410
    if-nez p1, :cond_3

    .line 414
    :goto_2
    return-void

    .line 413
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto :goto_2
.end method

.method public onTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 12
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 352
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v6, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 357
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_16

    .line 358
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 360
    :cond_16
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v6, v8, :cond_1d

    .line 406
    :cond_1c
    :goto_1c
    return-void

    .line 363
    :cond_1d
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 364
    .local v0, "action":I
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 365
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_30

    .line 366
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-virtual {v6, v0, p2, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    .line 368
    :cond_30
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v5, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 369
    .local v5, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v5, :cond_1c

    .line 372
    packed-switch v0, :pswitch_data_a2

    :pswitch_39
    goto :goto_1c

    .line 390
    :cond_3a
    :goto_3a
    :pswitch_3a
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    .line 391
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iput v8, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    goto :goto_1c

    .line 375
    :pswitch_45
    if-ltz v1, :cond_1c

    .line 376
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v7, v7, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v6, p2, v7, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 377
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->moveIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 378
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 379
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 380
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidate()V

    goto :goto_1c

    .line 385
    :pswitch_6f
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_3a

    .line 386
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_3a

    .line 394
    :pswitch_7d
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 395
    .local v4, "pointerIndex":I
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 396
    .local v3, "pointerId":I
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v3, v6, :cond_1c

    .line 399
    if-nez v4, :cond_8e

    const/4 v2, 0x1

    .line 400
    .local v2, "newPointerIndex":I
    :cond_8e
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 401
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$2;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v7, v7, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v6, p2, v7, v4}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    goto/16 :goto_1c

    .line 372
    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_45
        :pswitch_6f
        :pswitch_39
        :pswitch_39
        :pswitch_7d
    .end packed-switch
.end method

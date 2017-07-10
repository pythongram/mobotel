.class final Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChatDialogsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_THRESHOLD:I = 0xa

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0xa


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;)V
    .registers 2

    .prologue
    .line 509
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 510
    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;Lorg/telegram/ui/Components/ChatDialogsView$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;
    .param p2, "x1"    # Lorg/telegram/ui/Components/ChatDialogsView$1;

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;-><init>(Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    .line 517
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    # setter for: Lorg/telegram/ui/Components/ChatDialogsView;->disableLongCick:Z
    invoke-static {v2, v6}, Lorg/telegram/ui/Components/ChatDialogsView;->access$302(Lorg/telegram/ui/Components/ChatDialogsView;Z)Z

    .line 518
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 519
    .local v1, "diffY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 520
    .local v0, "diffX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4b

    .line 521
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_44

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_44

    .line 522
    cmpl-float v2, v0, v5

    if-lez v2, :cond_45

    .line 523
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;->onSwipeRight()V

    .line 535
    :cond_44
    :goto_44
    return v6

    .line 525
    :cond_45
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;->onSwipeLeft()V

    goto :goto_44

    .line 528
    :cond_4b
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_44

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_44

    .line 529
    cmpl-float v2, v1, v5

    if-lez v2, :cond_65

    .line 530
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;->onSwipeBottom()V

    goto :goto_44

    .line 532
    :cond_65
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;->onSwipeTop()V

    goto :goto_44
.end method

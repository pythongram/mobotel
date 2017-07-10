.class Lorg/telegram/ui/Components/PipVideoView$1;
.super Landroid/widget/FrameLayout;
.source "PipVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipVideoView;->show(Landroid/app/Activity;Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;FI)Landroid/view/TextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dragging:Z

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/PipVideoView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipVideoView;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PipVideoView;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 51
    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v5, 0x3e99999a

    const/4 v3, 0x1

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 60
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 61
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1b

    .line 62
    iput v0, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    .line 63
    iput v1, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    .line 73
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1a
    return v2

    .line 64
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_16

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PipVideoView$1;->dragging:Z

    if-nez v2, :cond_16

    .line 65
    iget v2, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v4

    cmpl-float v2, v2, v4

    if-gez v2, :cond_45

    iget v2, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v4, 0x0

    invoke-static {v5, v4}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_16

    .line 66
    :cond_45
    iput-boolean v3, p0, Lorg/telegram/ui/Components/PipVideoView$1;->dragging:Z

    .line 67
    iput v0, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    .line 68
    iput v1, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    .line 69
    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->controlsView:Landroid/view/View;
    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoView;->access$000(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewParent;

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v2, v3

    .line 70
    goto :goto_1a
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 83
    iget-boolean v8, p0, Lorg/telegram/ui/Components/PipVideoView$1;->dragging:Z

    if-nez v8, :cond_b

    .line 121
    :goto_a
    return v6

    .line 86
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 87
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 88
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_14f

    .line 89
    iget v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    sub-float v1, v4, v6

    .line 90
    .local v1, "dx":F
    iget v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    sub-float v2, v5, v6

    .line 91
    .local v2, "dy":F
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v8, v8

    add-float/2addr v8, v1

    float-to-int v8, v8

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 92
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    float-to-int v8, v8

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 93
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$200(Lorg/telegram/ui/Components/PipVideoView;)I

    move-result v6

    div-int/lit8 v3, v6, 0x2

    .line 94
    .local v3, "maxDiff":I
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    neg-int v8, v3

    if-ge v6, v8, :cond_ba

    .line 95
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    neg-int v8, v3

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 99
    :cond_58
    :goto_58
    const/high16 v0, 0x3f800000    # 1.0f

    .line 100
    .local v0, "alpha":F
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v6, :cond_ea

    .line 101
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    int-to-float v8, v3

    div-float/2addr v6, v8

    mul-float/2addr v6, v10

    add-float v0, v11, v6

    .line 105
    :cond_72
    :goto_72
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$300(Lorg/telegram/ui/Components/PipVideoView;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v0

    if-eqz v6, :cond_89

    .line 106
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$300(Lorg/telegram/ui/Components/PipVideoView;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 108
    :cond_89
    const/4 v3, 0x0

    .line 109
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    neg-int v8, v3

    if-ge v6, v8, :cond_11f

    .line 110
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    neg-int v8, v3

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 114
    :cond_9e
    :goto_9e
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$400(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lorg/telegram/ui/Components/PipVideoView;->access$300(Lorg/telegram/ui/Components/PipVideoView;)Landroid/widget/FrameLayout;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v9}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iput v4, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startX:F

    .line 116
    iput v5, p0, Lorg/telegram/ui/Components/PipVideoView$1;->startY:F

    .end local v0    # "alpha":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "maxDiff":I
    :cond_b7
    :goto_b7
    move v6, v7

    .line 121
    goto/16 :goto_a

    .line 96
    .restart local v1    # "dx":F
    .restart local v2    # "dy":F
    .restart local v3    # "maxDiff":I
    :cond_ba
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v9}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v3

    if-le v6, v8, :cond_58

    .line 97
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v9}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v3

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_58

    .line 102
    .restart local v0    # "alpha":F
    :cond_ea
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v9}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_72

    .line 103
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v8}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v6, v8

    int-to-float v6, v6

    int-to-float v8, v3

    div-float/2addr v6, v8

    mul-float/2addr v6, v10

    sub-float v0, v11, v6

    goto/16 :goto_72

    .line 111
    :cond_11f
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v9}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v3

    if-le v6, v8, :cond_9e

    .line 112
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v9}, Lorg/telegram/ui/Components/PipVideoView;->access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v3

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_9e

    .line 117
    .end local v0    # "alpha":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "maxDiff":I
    :cond_14f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v7, :cond_b7

    .line 118
    iput-boolean v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->dragging:Z

    .line 119
    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView$1;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # invokes: Lorg/telegram/ui/Components/PipVideoView;->animateToBoundsMaybe()V
    invoke-static {v6}, Lorg/telegram/ui/Components/PipVideoView;->access$500(Lorg/telegram/ui/Components/PipVideoView;)V

    goto/16 :goto_b7
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 79
    return-void
.end method

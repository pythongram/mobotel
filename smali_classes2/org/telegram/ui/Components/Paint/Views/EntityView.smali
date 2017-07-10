.class public Lorg/telegram/ui/Components/Paint/Views/EntityView;
.super Landroid/widget/FrameLayout;
.source "EntityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;,
        Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
    }
.end annotation


# instance fields
.field private announcedDragging:Z

.field private announcedSelection:Z

.field private delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hasPanned:Z

.field private hasReleased:Z

.field private hasTransformed:Z

.field private offsetX:I

.field private offsetY:I

.field protected position:Lorg/telegram/ui/Components/Point;

.field private previousLocationX:F

.field private previousLocationY:F

.field private recognizedLongPress:Z

.field protected selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

.field private uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pos"    # Lorg/telegram/ui/Components/Point;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    .line 31
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    .line 32
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    .line 33
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    .line 34
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDragging:Z

    .line 35
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    .line 39
    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->uuid:Ljava/util/UUID;

    .line 53
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    .line 55
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->gestureDetector:Landroid/view/GestureDetector;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 18
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 18
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 18
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDragging:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDragging:Z

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchUp()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/view/GestureDetector;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 18
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->gestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 18
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 18
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/Views/EntityView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 18
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->offsetX:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 18
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->offsetY:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 18
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 18
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Paint/Views/EntityView;FF)Z
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchMove(FF)Z

    move-result v0

    return v0
.end method

.method private onTouchMove(FF)Z
    .registers 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x1

    .line 107
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v2

    .line 108
    .local v2, "scale":F
    new-instance v3, Lorg/telegram/ui/Components/Point;

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    sub-float v4, p1, v4

    div-float/2addr v4, v2

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    sub-float v6, p2, v6

    div-float/2addr v6, v2

    invoke-direct {v3, v4, v6}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    .line 109
    .local v3, "translation":Lorg/telegram/ui/Components/Point;
    iget v4, v3, Lorg/telegram/ui/Components/Point;->x:F

    float-to-double v6, v4

    iget v4, v3, Lorg/telegram/ui/Components/Point;->y:F

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 110
    .local v0, "distance":F
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    if-eqz v4, :cond_49

    const/high16 v1, 0x40c00000    # 6.0f

    .line 111
    .local v1, "minDistance":F
    :goto_2b
    cmpl-float v4, v0, v1

    if-lez v4, :cond_4c

    .line 112
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->pan(Lorg/telegram/ui/Components/Point;)V

    .line 113
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    .line 114
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    .line 115
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDragging:Z

    if-nez v4, :cond_45

    .line 116
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDragging:Z

    .line 117
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v4, :cond_45

    .line 118
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {v4, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onBeganEntityDragging(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 121
    :cond_45
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    move v4, v5

    .line 124
    :goto_48
    return v4

    .line 110
    .end local v1    # "minDistance":F
    :cond_49
    const/high16 v1, 0x41800000    # 16.0f

    goto :goto_2b

    .line 124
    .restart local v1    # "minDistance":F
    :cond_4c
    const/4 v4, 0x0

    goto :goto_48
.end method

.method private onTouchUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v0, :cond_1a

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 131
    :cond_1a
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDragging:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v0, :cond_27

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onFinishedEntityDragging(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 134
    :cond_27
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    .line 135
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    .line 136
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    .line 138
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    .line 139
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDragging:Z

    .line 140
    return-void
.end method


# virtual methods
.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .registers 2

    .prologue
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public deselect()V
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-nez v0, :cond_5

    .line 245
    :goto_4
    return-void

    .line 241
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    goto :goto_4
.end method

.method public getPosition()Lorg/telegram/ui/Components/Point;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScaleX()F

    move-result v0

    return v0
.end method

.method protected getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 213
    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public getUUID()Ljava/util/UUID;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-gt v5, v6, :cond_10

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {v5, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v5

    if-nez v5, :cond_12

    :cond_10
    move v1, v4

    .line 183
    :goto_11
    return v1

    .line 148
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 149
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 150
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 151
    .local v0, "action":I
    const/4 v1, 0x0

    .line 153
    .local v1, "handled":Z
    packed-switch v0, :pswitch_data_4c

    .line 181
    :goto_22
    :pswitch_22
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_11

    .line 156
    :pswitch_28
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->isSelected()Z

    move-result v5

    if-nez v5, :cond_39

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v5, :cond_39

    .line 157
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {v5, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 158
    iput-boolean v6, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    .line 160
    :cond_39
    iput v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    .line 161
    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    .line 162
    const/4 v1, 0x1

    .line 163
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    goto :goto_22

    .line 168
    :pswitch_41
    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchMove(FF)Z

    move-result v1

    .line 170
    goto :goto_22

    .line 175
    :pswitch_46
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchUp()V

    .line 176
    const/4 v1, 0x1

    goto :goto_22

    .line 153
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_46
        :pswitch_41
        :pswitch_46
        :pswitch_22
        :pswitch_28
        :pswitch_46
    .end packed-switch
.end method

.method public pan(Lorg/telegram/ui/Components/Point;)V
    .registers 5
    .param p1, "translation"    # Lorg/telegram/ui/Components/Point;

    .prologue
    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, p1, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v1, v0, Lorg/telegram/ui/Components/Point;->y:F

    iget v2, p1, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/Point;->y:F

    .line 189
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    .line 190
    return-void
.end method

.method public rotate(F)V
    .registers 2
    .param p1, "angle"    # F

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setRotation(F)V

    .line 209
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    .line 210
    return-void
.end method

.method public scale(F)V
    .registers 5
    .param p1, "scale"    # F

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v1

    mul-float/2addr v1, p1

    const v2, 0x3dcccccd

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 203
    .local v0, "newScale":F
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    .line 204
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    .line 205
    return-void
.end method

.method public select(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "selectionContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    move-result-object v0

    .line 232
    .local v0, "selectionView":Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 234
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->updatePosition()V

    .line 235
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V
    .registers 2
    .param p1, "entityViewDelegate"    # Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    .line 94
    return-void
.end method

.method public setOffset(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 97
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->offsetX:I

    .line 98
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->offsetY:I

    .line 99
    return-void
.end method

.method public setPosition(Lorg/telegram/ui/Components/Point;)V
    .registers 2
    .param p1, "value"    # Lorg/telegram/ui/Components/Point;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    .line 80
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    .line 81
    return-void
.end method

.method public setScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScaleX(F)V

    .line 89
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScaleY(F)V

    .line 90
    return-void
.end method

.method public setSelectionVisibility(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 248
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-nez v0, :cond_5

    .line 252
    :goto_4
    return-void

    .line 251
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->setVisibility(I)V

    goto :goto_4

    :cond_e
    const/16 v0, 0x8

    goto :goto_a
.end method

.method protected updatePosition()V
    .registers 5

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 193
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 194
    .local v1, "halfWidth":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 195
    .local v0, "halfHeight":F
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v2, v2, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setX(F)V

    .line 196
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v2, v0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setY(F)V

    .line 197
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    .line 198
    return-void
.end method

.method public updateSelectionView()V
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-eqz v0, :cond_9

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->updatePosition()V

    .line 228
    :cond_9
    return-void
.end method

.class public Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
.super Landroid/widget/FrameLayout;
.source "EntityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/EntityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionView"
.end annotation


# static fields
.field public static final SELECTION_LEFT_HANDLE:I = 0x1

.field public static final SELECTION_RIGHT_HANDLE:I = 0x2

.field public static final SELECTION_WHOLE_HANDLE:I = 0x3


# instance fields
.field private currentHandle:I

.field protected dotPaint:Landroid/graphics/Paint;

.field protected dotStrokePaint:Landroid/graphics/Paint;

.field protected paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/content/Context;)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 266
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 267
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 260
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    .line 261
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    .line 262
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->setWillNotDraw(Z)V

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    const v1, -0xc33511

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 276
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 26
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 296
    .local v4, "action":I
    const/4 v10, 0x0

    .line 298
    .local v10, "handled":Z
    packed-switch v4, :pswitch_data_24a

    .line 371
    :cond_8
    :goto_8
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_27

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->gestureDetector:Landroid/view/GestureDetector;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1200(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/view/GestureDetector;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 375
    :cond_27
    return v10

    .line 301
    :pswitch_28
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->pointInsideHandle(FF)I

    move-result v9

    .line 302
    .local v9, "handle":I
    if-eqz v9, :cond_8

    .line 303
    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$702(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$802(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$202(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    .line 307
    const/4 v10, 0x1

    goto :goto_8

    .line 313
    .end local v9    # "handle":I
    :pswitch_67
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8f

    .line 314
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v16

    .line 315
    .local v16, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    .line 317
    .local v17, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v17

    # invokes: Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchMove(FF)Z
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$900(Lorg/telegram/ui/Components/Paint/Views/EntityView;FF)Z

    move-result v10

    .line 318
    goto/16 :goto_8

    .line 319
    .end local v16    # "x":F
    .end local v17    # "y":F
    :cond_8f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$102(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    .line 322
    new-instance v15, Lorg/telegram/ui/Components/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$700(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v19

    sub-float v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$800(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v20

    sub-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    .line 323
    .local v15, "translation":Lorg/telegram/ui/Components/Point;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getRotation()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v13, v0

    .line 324
    .local v13, "radAngle":F
    iget v0, v15, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    float-to-double v0, v13

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    iget v0, v15, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    float-to-double v0, v13

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v8, v0

    .line 325
    .local v8, "delta":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_116

    .line 326
    const/high16 v18, -0x40800000    # -1.0f

    mul-float v8, v8, v18

    .line 329
    :cond_116
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v19, v19, v8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    add-float v14, v18, v19

    .line 330
    .local v14, "scaleDelta":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v6, v0

    .line 333
    .local v6, "centerX":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v7, v0

    .line 335
    .local v7, "centerY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v11, v19, v18

    .line 336
    .local v11, "parentX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v19, v18

    sget v19, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v12, v18, v19

    .line 338
    .local v12, "parentY":F
    const/4 v5, 0x0

    .line 339
    .local v5, "angle":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_211

    .line 340
    sub-float v18, v7, v12

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    sub-float v20, v6, v11

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v5, v0

    .line 345
    :cond_1a9
    :goto_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    float-to-double v0, v5

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$702(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$802(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDragging:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1000(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v18

    if-nez v18, :cond_20e

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDragging:Z
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1002(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v18

    if-eqz v18, :cond_20e

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onBeganEntityDragging(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 356
    :cond_20e
    const/4 v10, 0x1

    .line 357
    goto/16 :goto_8

    .line 341
    :cond_211
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a9

    .line 342
    sub-float v18, v12, v7

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    sub-float v20, v11, v6

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v5, v0

    goto/16 :goto_1a9

    .line 364
    .end local v5    # "angle":F
    .end local v6    # "centerX":F
    .end local v7    # "centerY":F
    .end local v8    # "delta":F
    .end local v11    # "parentX":F
    .end local v12    # "parentY":F
    .end local v13    # "radAngle":F
    .end local v14    # "scaleDelta":F
    .end local v15    # "translation":Lorg/telegram/ui/Components/Point;
    :pswitch_236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v18, v0

    # invokes: Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchUp()V
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1100(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 365
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    .line 366
    const/4 v10, 0x1

    goto/16 :goto_8

    .line 298
    :pswitch_data_24a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_236
        :pswitch_67
        :pswitch_236
        :pswitch_8
        :pswitch_28
        :pswitch_236
    .end packed-switch
.end method

.method protected pointInsideHandle(FF)I
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method protected updatePosition()V
    .registers 5

    .prologue
    .line 279
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getSelectionBounds()Lorg/telegram/ui/Components/Rect;

    move-result-object v0

    .line 280
    .local v0, "bounds":Lorg/telegram/ui/Components/Rect;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 281
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v0, Lorg/telegram/ui/Components/Rect;->x:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->offsetX:I
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$500(Lorg/telegram/ui/Components/Paint/Views/EntityView;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 282
    iget v2, v0, Lorg/telegram/ui/Components/Rect;->y:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->offsetY:I
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 283
    iget v2, v0, Lorg/telegram/ui/Components/Rect;->width:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 284
    iget v2, v0, Lorg/telegram/ui/Components/Rect;->height:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 285
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getRotation()F

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->setRotation(F)V

    .line 287
    return-void
.end method

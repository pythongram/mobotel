.class public Lorg/telegram/ui/Components/Paint/RenderView;
.super Landroid/view/TextureView;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;,
        Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private brush:Lorg/telegram/ui/Components/Paint/Brush;

.field private color:I

.field private delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

.field private input:Lorg/telegram/ui/Components/Paint/Input;

.field private internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

.field private orientation:I

.field private painting:Lorg/telegram/ui/Components/Paint/Painting;

.field private queue:Lorg/telegram/messenger/DispatchQueue;

.field private shuttingDown:Z

.field private transformedBitmap:Z

.field private undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

.field private weight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paint"    # Lorg/telegram/ui/Components/Paint/Painting;
    .param p3, "b"    # Landroid/graphics/Bitmap;
    .param p4, "rotation"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;

    .line 54
    iput p4, p0, Lorg/telegram/ui/Components/Paint/RenderView;->orientation:I

    .line 55
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Painting;->setRenderView(Lorg/telegram/ui/Components/Paint/RenderView;)V

    .line 58
    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$1;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 119
    new-instance v0, Lorg/telegram/ui/Components/Paint/Input;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Input;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->input:Lorg/telegram/ui/Components/Paint/Input;

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    new-instance v1, Lorg/telegram/ui/Components/Paint/RenderView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/RenderView$2;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->setDelegate(Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Paint/RenderView;Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .prologue
    .line 25
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->updateTransform()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    .line 25
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->transformedBitmap:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/Paint/RenderView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->transformedBitmap:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/Paint/RenderView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 25
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Paint/RenderView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    .line 25
    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->orientation:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/Paint/RenderView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->orientation:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Paint/RenderView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    .line 25
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shuttingDown:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/UndoStore;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/messenger/DispatchQueue;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->queue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method private brushWeightForSize(F)F
    .registers 5
    .param p1, "size"    # F

    .prologue
    .line 180
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v1

    iget v0, v1, Lorg/telegram/ui/Components/Size;->width:F

    .line 181
    .local v0, "paintingWidth":F
    const/high16 v1, 0x3b800000    # 0.00390625f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3d340000

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    return v1
.end method

.method private updateTransform()V
    .registers 14

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 209
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 211
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->getWidth()I

    move-result v12

    .line 212
    .local v12, "width":I
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    if-eqz v1, :cond_71

    int-to-float v1, v12

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    div-float v11, v1, v2

    .line 213
    .local v11, "scale":F
    :goto_1d
    cmpg-float v1, v11, v0

    if-gtz v1, :cond_23

    .line 214
    const/high16 v11, 0x3f800000    # 1.0f

    .line 217
    :cond_23
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v9

    .line 219
    .local v9, "paintingSize":Lorg/telegram/ui/Components/Size;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 220
    neg-float v1, v11

    invoke-virtual {v8, v11, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 221
    iget v1, v9, Lorg/telegram/ui/Components/Size;->width:F

    neg-float v1, v1

    div-float/2addr v1, v3

    iget v2, v9, Lorg/telegram/ui/Components/Size;->height:F

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 223
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->input:Lorg/telegram/ui/Components/Paint/Input;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/Paint/Input;->setMatrix(Landroid/graphics/Matrix;)V

    .line 225
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferWidth:I
    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$800(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferHeight:I
    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$900(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I

    move-result v2

    int-to-float v3, v2

    const/high16 v4, -0x40800000    # -1.0f

    move v2, v0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/GLMatrix;->LoadOrtho(FFFFFF)[F

    move-result-object v10

    .line 226
    .local v10, "proj":[F
    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/GLMatrix;->LoadGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v6

    .line 227
    .local v6, "effectiveProjection":[F
    invoke-static {v10, v6}, Lorg/telegram/ui/Components/Paint/GLMatrix;->MultiplyMat4f([F[F)[F

    move-result-object v7

    .line 228
    .local v7, "finalProjection":[F
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/Paint/Painting;->setRenderProjection([F)V

    .line 229
    return-void

    .end local v6    # "effectiveProjection":[F
    .end local v7    # "finalProjection":[F
    .end local v9    # "paintingSize":Lorg/telegram/ui/Components/Size;
    .end local v10    # "proj":[F
    .end local v11    # "scale":F
    :cond_71
    move v11, v5

    .line 212
    goto :goto_1d
.end method


# virtual methods
.method public getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    return-object v0
.end method

.method public getCurrentColor()I
    .registers 2

    .prologue
    .line 185
    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->color:I

    return v0
.end method

.method public getCurrentWeight()F
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->weight:F

    return v0
.end method

.method public getPainting()Lorg/telegram/ui/Components/Paint/Painting;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    return-object v0
.end method

.method public getResultBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->getTexture()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onBeganDrawing()V
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    if-eqz v0, :cond_9

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;->onBeganDrawing()V

    .line 239
    :cond_9
    return-void
.end method

.method public onFinishedDrawing(Z)V
    .registers 3
    .param p1, "moved"    # Z

    .prologue
    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    if-eqz v0, :cond_9

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;->onFinishedDrawing(Z)V

    .line 245
    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 148
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_9

    .line 153
    const/4 v0, 0x0

    .line 160
    :cond_8
    :goto_8
    return v0

    .line 156
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$600(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->ready:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$700(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->input:Lorg/telegram/ui/Components/Paint/Input;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Paint/Input;->process(Landroid/view/MotionEvent;)V

    goto :goto_8
.end method

.method public performInContext(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 533
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-nez v0, :cond_5

    .line 548
    :goto_4
    return-void

    .line 537
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    new-instance v1, Lorg/telegram/ui/Components/Paint/RenderView$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/RenderView$4;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V
    .registers 3
    .param p1, "value"    # Lorg/telegram/ui/Components/Paint/Brush;

    .prologue
    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 206
    return-void
.end method

.method public setBrushSize(F)V
    .registers 3
    .param p1, "size"    # F

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->brushWeightForSize(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->weight:F

    .line 198
    return-void
.end method

.method public setColor(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 189
    iput p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->color:I

    .line 190
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;)V
    .registers 2
    .param p1, "renderViewDelegate"    # Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    .line 173
    return-void
.end method

.method public setQueue(Lorg/telegram/messenger/DispatchQueue;)V
    .registers 2
    .param p1, "dispatchQueue"    # Lorg/telegram/messenger/DispatchQueue;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->queue:Lorg/telegram/messenger/DispatchQueue;

    .line 169
    return-void
.end method

.method public setUndoStore(Lorg/telegram/ui/Components/Paint/UndoStore;)V
    .registers 2
    .param p1, "store"    # Lorg/telegram/ui/Components/Paint/UndoStore;

    .prologue
    .line 164
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    .line 165
    return-void
.end method

.method public shouldDraw()Z
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->delegate:Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;->shouldDraw()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->shuttingDown:Z

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView;->internal:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    if-eqz v0, :cond_f

    .line 251
    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$3;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    .line 261
    :cond_f
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->setVisibility(I)V

    .line 262
    return-void
.end method

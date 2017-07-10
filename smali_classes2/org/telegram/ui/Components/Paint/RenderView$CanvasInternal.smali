.class Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
.super Lorg/telegram/messenger/DispatchQueue;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanvasInternal"
.end annotation


# instance fields
.field private final EGL_CONTEXT_CLIENT_VERSION:I

.field private final EGL_OPENGL_ES2_BIT:I

.field private bufferHeight:I

.field private bufferWidth:I

.field private drawRunnable:Ljava/lang/Runnable;

.field private egl10:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private initialized:Z

.field private lastRenderCallTime:J

.field private ready:Z

.field private scheduledRunnable:Ljava/lang/Runnable;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/RenderView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView;Landroid/graphics/SurfaceTexture;)V
    .registers 4
    .param p2, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 282
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    .line 283
    const-string v0, "CanvasInternal"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    .line 265
    const/16 v0, 0x3098

    iput v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 266
    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->EGL_OPENGL_ES2_BIT:I

    .line 413
    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->drawRunnable:Ljava/lang/Runnable;

    .line 284
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 285
    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .prologue
    .line 264
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->setCurrentContext()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .prologue
    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .prologue
    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGL10;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .prologue
    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .prologue
    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->drawRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 264
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .prologue
    .line 264
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .prologue
    .line 264
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->ready:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->ready:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .prologue
    .line 264
    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferWidth:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .prologue
    .line 264
    iget v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferHeight:I

    return v0
.end method

.method private checkBitmap()V
    .registers 6

    .prologue
    .line 386
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v1

    .line 388
    .local v1, "paintingSize":Lorg/telegram/ui/Components/Size;
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Lorg/telegram/ui/Components/Size;->width:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_34

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_34

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->orientation:I
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1200(Lorg/telegram/ui/Components/Paint/RenderView;)I

    move-result v3

    if-eqz v3, :cond_81

    .line 389
    :cond_34
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v0, v3

    .line 390
    .local v0, "bitmapWidth":F
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->orientation:I
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1200(Lorg/telegram/ui/Components/Paint/RenderView;)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_57

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->orientation:I
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1200(Lorg/telegram/ui/Components/Paint/RenderView;)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_62

    .line 391
    :cond_57
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 393
    :cond_62
    iget v3, v1, Lorg/telegram/ui/Components/Size;->width:F

    div-float v2, v3, v0

    .line 394
    .local v2, "scale":F
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->createBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    # setter for: Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1102(Lorg/telegram/ui/Components/Paint/RenderView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 395
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/Components/Paint/RenderView;->orientation:I
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1202(Lorg/telegram/ui/Components/Paint/RenderView;I)I

    .line 396
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v4, 0x1

    # setter for: Lorg/telegram/ui/Components/Paint/RenderView;->transformedBitmap:Z
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1002(Lorg/telegram/ui/Components/Paint/RenderView;Z)Z

    .line 398
    .end local v0    # "bitmapWidth":F
    .end local v2    # "scale":F
    :cond_81
    return-void
.end method

.method private createBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scale"    # F

    .prologue
    const/4 v1, 0x0

    .line 379
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 380
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->orientation:I
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1200(Lorg/telegram/ui/Components/Paint/RenderView;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 382
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private initGL()Z
    .registers 13

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 298
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_3f

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglGetDisplay failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    move v4, v8

    .line 375
    :goto_3e
    return v4

    .line 307
    :cond_3f
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 308
    .local v7, "version":[I
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_71

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglInitialize failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    move v4, v8

    .line 311
    goto :goto_3e

    .line 314
    :cond_71
    new-array v5, v4, [I

    .line 315
    .local v5, "configsCount":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 316
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v0, 0xf

    new-array v2, v0, [I

    fill-array-data v2, :array_1b2

    .line 326
    .local v2, "configSpec":[I
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglChooseConfig failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    move v4, v8

    .line 329
    goto :goto_3e

    .line 330
    :cond_ab
    aget v0, v5, v8

    if-lez v0, :cond_f1

    .line 331
    aget-object v0, v3, v8

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 338
    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_1d4

    .line 339
    .local v6, "attrib_list":[I
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v10, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v9, v10, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_fc

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglCreateContext failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    move v4, v8

    .line 343
    goto/16 :goto_3e

    .line 333
    .end local v6    # "attrib_list":[I
    :cond_f1
    const-string v0, "eglConfig not initialized"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    move v4, v8

    .line 335
    goto/16 :goto_3e

    .line 346
    .restart local v6    # "attrib_list":[I
    :cond_fc
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    instance-of v0, v0, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_141

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v10, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v11, 0x0

    invoke-interface {v0, v1, v9, v10, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_11b

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_147

    .line 354
    :cond_11b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWindowSurface failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    move v4, v8

    .line 356
    goto/16 :goto_3e

    .line 349
    :cond_141
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    move v4, v8

    .line 350
    goto/16 :goto_3e

    .line 358
    :cond_147
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v10, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v11, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v9, v10, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_17d

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    move v4, v8

    .line 361
    goto/16 :goto_3e

    .line 364
    :cond_17d
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 365
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 366
    const/16 v0, 0xb90

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 367
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Painting;->setupShaders()V

    .line 370
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->checkBitmap()V

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    goto/16 :goto_3e

    .line 316
    nop

    :array_1b2
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    .line 338
    :array_1d4
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private setCurrentContext()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 401
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z

    if-nez v1, :cond_6

    .line 410
    :cond_5
    :goto_5
    return v0

    .line 405
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v3, 0x3059

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 406
    :cond_24
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 410
    :cond_34
    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public finish()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1d

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 480
    iput-object v5, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 482
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2c

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 484
    iput-object v5, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 486
    :cond_2c
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_39

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 488
    iput-object v5, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 490
    :cond_39
    return-void
.end method

.method public getTexture()Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 506
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z

    if-nez v3, :cond_7

    .line 507
    const/4 v3, 0x0

    .line 524
    :goto_6
    return-object v3

    .line 509
    :cond_7
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 510
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/graphics/Bitmap;

    .line 512
    .local v1, "object":[Landroid/graphics/Bitmap;
    :try_start_f
    new-instance v3, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$5;

    invoke-direct {v3, p0, v1, v2}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$5;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;[Landroid/graphics/Bitmap;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->postRunnable(Ljava/lang/Runnable;)V

    .line 520
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1d

    .line 524
    :goto_1a
    aget-object v3, v1, v4

    goto :goto_6

    .line 521
    :catch_1d
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public requestRender()V
    .registers 2

    .prologue
    .line 451
    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$2;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->postRunnable(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 295
    :cond_14
    :goto_14
    return-void

    .line 293
    :cond_15
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initGL()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z

    .line 294
    invoke-super {p0}, Lorg/telegram/messenger/DispatchQueue;->run()V

    goto :goto_14
.end method

.method public scheduleRedraw()V
    .registers 5

    .prologue
    .line 460
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    .line 465
    :cond_c
    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$3;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->postRunnable(Ljava/lang/Runnable;J)V

    .line 474
    return-void
.end method

.method public setBufferSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 446
    iput p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferWidth:I

    .line 447
    iput p2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferHeight:I

    .line 448
    return-void
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 493
    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$4;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->postRunnable(Ljava/lang/Runnable;)V

    .line 503
    return-void
.end method

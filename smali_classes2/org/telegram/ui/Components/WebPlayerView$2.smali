.class Lorg/telegram/ui/Components/WebPlayerView$2;
.super Ljava/lang/Object;
.source "WebPlayerView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 901
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 905
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v0, 0x0

    .line 914
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$2700(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 915
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$2800(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 916
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v2, 0x2

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$2902(Lorg/telegram/ui/Components/WebPlayerView;I)I

    .line 918
    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;
    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 919
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;
    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 920
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 923
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x1

    goto :goto_2e
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 910
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 928
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2900(Lorg/telegram/ui/Components/WebPlayerView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3100(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$2$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$2$1;-><init>(Lorg/telegram/ui/Components/WebPlayerView$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 951
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3100(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->invalidate()V

    .line 953
    :cond_24
    return-void
.end method

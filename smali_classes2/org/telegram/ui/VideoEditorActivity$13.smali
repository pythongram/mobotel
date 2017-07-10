.class Lorg/telegram/ui/VideoEditorActivity$13;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VideoEditorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 871
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$13;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 9
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 874
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$13;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1900(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/TextureView;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$13;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1900(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/TextureView;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$13;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 890
    :cond_1c
    :goto_1c
    return-void

    .line 878
    :cond_1d
    :try_start_1d
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$13;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1900(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 879
    .local v1, "s":Landroid/view/Surface;
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$13;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 880
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$13;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 881
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$13;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 882
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$13;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_4f} :catch_50

    goto :goto_1c

    .line 887
    .end local v1    # "s":Landroid/view/Surface;
    :catch_50
    move-exception v0

    .line 888
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 884
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "s":Landroid/view/Surface;
    :cond_55
    :try_start_55
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$13;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$13;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$13;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_70} :catch_50

    goto :goto_1c
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x1

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$13;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_a

    .line 903
    :goto_9
    return v2

    .line 902
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$13;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_9
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 895
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 909
    return-void
.end method

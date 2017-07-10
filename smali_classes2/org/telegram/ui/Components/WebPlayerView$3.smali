.class Lorg/telegram/ui/Components/WebPlayerView$3;
.super Ljava/lang/Object;
.source "WebPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 956
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 959
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z
    invoke-static {v0, v10}, Lorg/telegram/ui/Components/WebPlayerView;->access$2802(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 960
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3300(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 961
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3300(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 962
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v4}, Lorg/telegram/ui/Components/WebPlayerView;->access$3302(Lorg/telegram/ui/Components/WebPlayerView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 965
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z
    invoke-static {v0, v5}, Lorg/telegram/ui/Components/WebPlayerView;->access$2702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3200(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 968
    :try_start_2b
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;
    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;
    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3302(Lorg/telegram/ui/Components/WebPlayerView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3300(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_59} :catch_109

    .line 978
    :goto_59
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3300(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_125

    .line 979
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3200(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3200(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3300(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 986
    :cond_79
    :goto_79
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z
    invoke-static {v0, v5}, Lorg/telegram/ui/Components/WebPlayerView;->access$3502(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 987
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3600(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 988
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->updateShareButton()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3700(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 989
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3800(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 990
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3900(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 992
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 993
    .local v8, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v8, :cond_a9

    .line 994
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 996
    :cond_a9
    iget-object v9, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3400(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z
    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$3500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$4000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/Components/WebPlayerView;->access$4000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVideoRotation()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z
    invoke-static {v5}, Lorg/telegram/ui/Components/WebPlayerView;->access$4100(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onSwitchInlineMode(Landroid/view/View;ZFIZ)Landroid/view/TextureView;

    move-result-object v0

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;
    invoke-static {v9, v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3102(Lorg/telegram/ui/Components/WebPlayerView;Landroid/view/TextureView;)Landroid/view/TextureView;

    .line 997
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3100(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 998
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 999
    .local v7, "parent":Landroid/view/ViewGroup;
    if-eqz v7, :cond_ff

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1002
    :cond_ff
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v0

    invoke-virtual {v0, v10, v10}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 1003
    return-void

    .line 970
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v8    # "viewGroup":Landroid/view/ViewGroup;
    :catch_109
    move-exception v6

    .line 971
    .local v6, "e":Ljava/lang/Throwable;
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3300(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_120

    .line 972
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3300(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v4}, Lorg/telegram/ui/Components/WebPlayerView;->access$3302(Lorg/telegram/ui/Components/WebPlayerView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 975
    :cond_120
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_59

    .line 982
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_125
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$3;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3200(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_79
.end method

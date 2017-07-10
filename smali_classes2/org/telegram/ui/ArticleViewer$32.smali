.class Lorg/telegram/ui/ArticleViewer$32;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 5758
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$32;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5761
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$32;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-result-object v0

    if-nez v0, :cond_b

    .line 5778
    :cond_a
    :goto_a
    return-void

    .line 5764
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1b

    .line 5765
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$32;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5767
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$32;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I
    invoke-static {v0, v4}, Lorg/telegram/ui/ArticleViewer;->access$10902(Lorg/telegram/ui/ArticleViewer;I)I

    .line 5768
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$32;->this$0:Lorg/telegram/ui/ArticleViewer;

    const-wide/16 v2, 0x0

    # setter for: Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->access$11002(Lorg/telegram/ui/ArticleViewer;J)J

    .line 5769
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$32;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->setImages()V
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11100(Lorg/telegram/ui/ArticleViewer;)V

    .line 5770
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$32;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    .line 5771
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$32;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 5772
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$32;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->showAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 5773
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$32;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->showAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 5775
    :cond_53
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$32;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->hideAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 5776
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$32;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->hideAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    goto :goto_a
.end method

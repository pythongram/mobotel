.class Lorg/telegram/ui/PhotoViewer$51;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 4287
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$51;->val$photos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4290
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_13

    .line 4321
    :cond_12
    :goto_12
    return-void

    .line 4293
    :cond_13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_23

    .line 4294
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4296
    :cond_23
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->animationInProgress:I
    invoke-static {v1, v5}, Lorg/telegram/ui/PhotoViewer;->access$12402(Lorg/telegram/ui/PhotoViewer;I)I

    .line 4297
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-wide/16 v2, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/PhotoViewer;->access$12502(Lorg/telegram/ui/PhotoViewer;J)J

    .line 4298
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->setImages()V
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)V

    .line 4299
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 4300
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 4301
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 4302
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 4304
    :cond_5b
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 4305
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v5, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 4307
    :cond_6e
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->val$photos:Ljava/util/ArrayList;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_12

    .line 4308
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_c7

    .line 4309
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12900(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, -0x7ffeff00

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4315
    :goto_8c
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12900(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x110

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4316
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4317
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$12900(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4318
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 4319
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    goto/16 :goto_12

    .line 4313
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_c7
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$51;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12900(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_8c
.end method

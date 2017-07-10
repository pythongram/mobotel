.class Lorg/telegram/ui/Components/ChatAttachAlert$19;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->showCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 1441
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraCreated(Landroid/hardware/Camera;)V
    .registers 2
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1445
    return-void
.end method

.method public onCameraInit()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 1449
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1450
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_f
    if-ge v0, v2, :cond_22

    .line 1451
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1452
    .local v1, "child":Landroid/view/View;
    instance-of v5, v1, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v5, :cond_6b

    .line 1453
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1458
    .end local v1    # "child":Landroid/view/View;
    :cond_22
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v3

    .line 1459
    .local v3, "current":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraSession;->getNextFlashMode()Ljava/lang/String;

    move-result-object v4

    .line 1460
    .local v4, "next":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 1461
    const/4 v0, 0x0

    :goto_45
    if-ge v0, v11, :cond_c3

    .line 1462
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/widget/ImageView;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1463
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/widget/ImageView;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1464
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/widget/ImageView;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1461
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 1450
    .end local v3    # "current":Ljava/lang/String;
    .end local v4    # "next":Ljava/lang/String;
    .restart local v1    # "child":Landroid/view/View;
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1467
    .end local v1    # "child":Landroid/view/View;
    .restart local v3    # "current":Ljava/lang/String;
    .restart local v4    # "next":Ljava/lang/String;
    :cond_6e
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/widget/ImageView;

    move-result-object v9

    aget-object v9, v9, v6

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;
    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v10

    # invokes: Lorg/telegram/ui/Components/ChatAttachAlert;->setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    invoke-static {v5, v9, v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5900(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1468
    const/4 v0, 0x0

    :goto_8a
    if-ge v0, v11, :cond_c3

    .line 1469
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/widget/ImageView;

    move-result-object v5

    aget-object v9, v5, v0

    if-nez v0, :cond_bf

    move v5, v6

    :goto_97
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1470
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/widget/ImageView;

    move-result-object v5

    aget-object v9, v5, v0

    if-nez v0, :cond_c1

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v5

    if-eqz v5, :cond_c1

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_ae
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1471
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/widget/ImageView;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1468
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :cond_bf
    move v5, v7

    .line 1469
    goto :goto_97

    :cond_c1
    move v5, v8

    .line 1470
    goto :goto_ae

    .line 1474
    :cond_c3
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/ImageView;

    move-result-object v8

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v5

    if-eqz v5, :cond_f1

    const v5, 0x7f02008d

    :goto_d8
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1475
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/camera/CameraView;->hasFrontFaceCamera()Z

    move-result v8

    if-eqz v8, :cond_f5

    :goto_ed
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1476
    return-void

    .line 1474
    :cond_f1
    const v5, 0x7f02008e

    goto :goto_d8

    :cond_f5
    move v6, v7

    .line 1475
    goto :goto_ed
.end method

.class Lorg/telegram/ui/Components/ChatAttachAlert$13;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;)V
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
    .line 940
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15
    .param p1, "currentImage"    # Landroid/view/View;

    .prologue
    const/high16 v12, 0x42400000    # 48.0f

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 943
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->flashAnimationInProgress:Z
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v4

    if-nez v4, :cond_2a

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v4

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->isInitied()Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 971
    :cond_2a
    :goto_2a
    return-void

    .line 946
    :cond_2b
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, "current":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraSession;->getNextFlashMode()Ljava/lang/String;

    move-result-object v2

    .line 948
    .local v2, "next":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 951
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/camera/CameraSession;->setCurrentFlashMode(Ljava/lang/String;)V

    .line 952
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->flashAnimationInProgress:Z
    invoke-static {v4, v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5802(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z

    .line 953
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v4, v4, v8

    if-ne v4, p1, :cond_d8

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v3, v4, v9

    .line 954
    .local v3, "nextImage":Landroid/widget/ImageView;
    :goto_71
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 955
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # invokes: Lorg/telegram/ui/Components/ChatAttachAlert;->setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    invoke-static {v4, v3, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5900(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 956
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 957
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Animator;

    const-string v5, "translationY"

    new-array v6, v10, [F

    aput v11, v6, v8

    .line 958
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v9

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "translationY"

    new-array v6, v10, [F

    .line 959
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_e2

    .line 960
    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x3

    const-string v6, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_ea

    .line 961
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    .line 957
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 962
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 963
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$13$1;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$13$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$13;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 970
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2a

    .line 953
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v3    # "nextImage":Landroid/widget/ImageView;
    :cond_d8
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v3, v4, v8

    goto :goto_71

    .line 959
    nop

    :array_e2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 960
    :array_ea
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

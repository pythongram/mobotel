.class Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$11$4;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    .prologue
    .line 864
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelButtonPressed()Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 868
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 869
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 870
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 878
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->startPreview(Lorg/telegram/messenger/camera/CameraSession;)V

    .line 879
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5102(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/io/File;)Ljava/io/File;

    .line 881
    :cond_5a
    const/4 v0, 0x1

    return v0
.end method

.method public scaleToFill()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 898
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 899
    .local v0, "locked":I
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->val$sameTakePictureOrientation:Z

    if-nez v3, :cond_22

    if-ne v0, v2, :cond_23

    :cond_22
    move v1, v2

    :cond_23
    return v1
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 886
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_f

    .line 894
    :goto_e
    return-void

    .line 889
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPhoto:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ChatActivity;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;)V

    .line 891
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->closeCamera(Z)V

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;
    invoke-static {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5102(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/io/File;)Ljava/io/File;

    goto :goto_e
.end method

.method public willHidePhotoViewer()V
    .registers 3

    .prologue
    .line 904
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->mediaCaptured:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4702(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z

    .line 905
    return-void
.end method

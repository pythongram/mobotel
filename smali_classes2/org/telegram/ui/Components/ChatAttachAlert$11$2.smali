.class Lorg/telegram/ui/Components/ChatAttachAlert$11$2;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$11;->shutterLongPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$11;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatAttachAlert$11;

    .prologue
    .line 749
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishVideoRecording(Landroid/graphics/Bitmap;)V
    .registers 11
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 752
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-nez v0, :cond_16

    .line 800
    :cond_15
    :goto_15
    return-void

    .line 755
    :cond_16
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 756
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer;->setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPhoto:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5502(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPhoto:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const-wide/16 v4, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    move v3, v2

    move v7, v2

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPhoto:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x2

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$11$2;Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 799
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    .line 759
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    goto :goto_15
.end method

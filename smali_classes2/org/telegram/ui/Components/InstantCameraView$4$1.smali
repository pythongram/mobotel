.class Lorg/telegram/ui/Components/InstantCameraView$4$1;
.super Ljava/lang/Object;
.source "InstantCameraView.java"

# interfaces
.implements Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView$4;->onCameraInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InstantCameraView$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$4;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/InstantCameraView$4;

    .prologue
    .line 202
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$4$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishVideoRecording(Landroid/graphics/Bitmap;)V
    .registers 12
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$4$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$4;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$4$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$4;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-nez v1, :cond_16

    .line 217
    :cond_15
    :goto_15
    return-void

    .line 208
    :cond_16
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$4$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$4;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    .line 209
    new-instance v0, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v0}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    .line 210
    .local v0, "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    const/4 v1, -0x1

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 211
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$4$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$4;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 212
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    iput-wide v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$4$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$4;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$4$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$4;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v9

    new-instance v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const-wide/16 v4, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$4$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$4;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;
    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    move v3, v2

    move v7, v2

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZ)V

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lorg/telegram/ui/ChatActivity;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;)V

    goto :goto_15
.end method

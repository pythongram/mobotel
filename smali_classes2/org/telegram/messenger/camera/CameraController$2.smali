.class Lorg/telegram/messenger/camera/CameraController$2;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$2;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$2;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v2, v2, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$2;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v2, v2, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 156
    :cond_11
    :goto_11
    return-void

    .line 146
    :cond_12
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_13
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$2;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v2, v2, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3f

    .line 147
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$2;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v2, v2, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/camera/CameraInfo;

    .line 148
    .local v1, "info":Lorg/telegram/messenger/camera/CameraInfo;
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_3c

    .line 149
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 150
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 151
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 152
    iput-object v3, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 146
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 155
    .end local v1    # "info":Lorg/telegram/messenger/camera/CameraInfo;
    :cond_3f
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$2;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object v3, v2, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    goto :goto_11
.end method

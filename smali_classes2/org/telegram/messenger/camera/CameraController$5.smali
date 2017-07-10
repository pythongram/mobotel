.class Lorg/telegram/messenger/camera/CameraController$5;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->startPreview(Lorg/telegram/messenger/camera/CameraSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$session:Lorg/telegram/messenger/camera/CameraSession;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 374
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$5;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, v3, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v3, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 380
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_19

    .line 381
    :try_start_8
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, v3, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v4, v4, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v4, v4, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, v3, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .end local v0    # "camera":Landroid/hardware/Camera;
    .local v1, "camera":Landroid/hardware/Camera;
    move-object v0, v1

    .line 383
    .end local v1    # "camera":Landroid/hardware/Camera;
    .restart local v0    # "camera":Landroid/hardware/Camera;
    :cond_19
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1d

    .line 391
    :goto_1c
    return-void

    .line 384
    :catch_1d
    move-exception v2

    .line 385
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, v3, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 386
    if-eqz v0, :cond_2a

    .line 387
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 389
    :cond_2a
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

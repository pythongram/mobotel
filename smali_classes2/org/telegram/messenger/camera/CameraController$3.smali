.class Lorg/telegram/messenger/camera/CameraController$3;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$beforeDestroyRunnable:Ljava/lang/Runnable;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic val$session:Lorg/telegram/messenger/camera/CameraSession;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 162
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$3;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$beforeDestroyRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iput-object p4, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$beforeDestroyRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_a

    .line 166
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$beforeDestroyRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 168
    :cond_a
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_13

    .line 186
    :cond_12
    :goto_12
    return-void

    .line 172
    :cond_13
    :try_start_13
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 173
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_26} :catch_3f

    .line 178
    :goto_26
    :try_start_26
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_44

    .line 182
    :goto_2f
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iput-object v3, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 183
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v1, :cond_12

    .line 184
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_12

    .line 174
    :catch_3f
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_26

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_44
    move-exception v0

    .line 180
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2f
.end method

.class Lorg/telegram/messenger/camera/CameraController$9;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$abandon:Z

.field final synthetic val$session:Lorg/telegram/messenger/camera/CameraSession;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Z)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 534
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iput-boolean p3, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$abandon:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 538
    :try_start_1
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, v6, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    .line 539
    .local v3, "info":Lorg/telegram/messenger/camera/CameraInfo;
    iget-object v1, v3, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 540
    .local v1, "camera":Landroid/hardware/Camera;
    if-eqz v1, :cond_2e

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v6

    if-eqz v6, :cond_2e

    .line 541
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v5

    .line 542
    .local v5, "tempRecorder":Landroid/media/MediaRecorder;
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    const/4 v7, 0x0

    # setter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v6, v7}, Lorg/telegram/messenger/camera/CameraController;->access$302(Lorg/telegram/messenger/camera/CameraController;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_75

    .line 544
    :try_start_1d
    invoke-virtual {v5}, Landroid/media/MediaRecorder;->stop()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_70

    .line 549
    :goto_20
    :try_start_20
    invoke-virtual {v5}, Landroid/media/MediaRecorder;->release()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_7a

    .line 554
    :goto_23
    :try_start_23
    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V

    .line 555
    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_7f

    .line 560
    :goto_29
    :try_start_29
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v6}, Lorg/telegram/messenger/camera/CameraSession;->stopVideoRecording()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_84

    .line 566
    .end local v5    # "tempRecorder":Landroid/media/MediaRecorder;
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 567
    .local v4, "params":Landroid/hardware/Camera$Parameters;
    const-string v6, "off"

    invoke-virtual {v4, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3a} :catch_89

    .line 572
    .end local v4    # "params":Landroid/hardware/Camera$Parameters;
    :goto_3a
    :try_start_3a
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraController;->access$600(Lorg/telegram/messenger/camera/CameraController;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/camera/CameraController$9$1;

    invoke-direct {v7, p0, v1}, Lorg/telegram/messenger/camera/CameraController$9$1;-><init>(Lorg/telegram/messenger/camera/CameraController$9;Landroid/hardware/Camera;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 584
    iget-boolean v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$abandon:Z

    if-nez v6, :cond_8e

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraController;->access$400(Lorg/telegram/messenger/camera/CameraController;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    move-result-object v6

    if-eqz v6, :cond_8e

    .line 585
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recordingSmallVideo:Z
    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraController;->access$200(Lorg/telegram/messenger/camera/CameraController;)Z

    move-result v6

    if-nez v6, :cond_67

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/messenger/camera/CameraController;->access$500(Lorg/telegram/messenger/camera/CameraController;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 586
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_67
    new-instance v6, Lorg/telegram/messenger/camera/CameraController$9$2;

    invoke-direct {v6, p0, v0}, Lorg/telegram/messenger/camera/CameraController$9$2;-><init>(Lorg/telegram/messenger/camera/CameraController$9;Landroid/graphics/Bitmap;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 601
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "camera":Landroid/hardware/Camera;
    .end local v3    # "info":Lorg/telegram/messenger/camera/CameraInfo;
    :goto_6f
    return-void

    .line 545
    .restart local v1    # "camera":Landroid/hardware/Camera;
    .restart local v3    # "info":Lorg/telegram/messenger/camera/CameraInfo;
    .restart local v5    # "tempRecorder":Landroid/media/MediaRecorder;
    :catch_70
    move-exception v2

    .line 546
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_74} :catch_75

    goto :goto_20

    .line 598
    .end local v1    # "camera":Landroid/hardware/Camera;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "info":Lorg/telegram/messenger/camera/CameraInfo;
    .end local v5    # "tempRecorder":Landroid/media/MediaRecorder;
    :catch_75
    move-exception v2

    .line 599
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6f

    .line 550
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "camera":Landroid/hardware/Camera;
    .restart local v3    # "info":Lorg/telegram/messenger/camera/CameraInfo;
    .restart local v5    # "tempRecorder":Landroid/media/MediaRecorder;
    :catch_7a
    move-exception v2

    .line 551
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_7b
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_23

    .line 556
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_7f
    move-exception v2

    .line 557
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_29

    .line 561
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_84
    move-exception v2

    .line 562
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2e

    .line 569
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "tempRecorder":Landroid/media/MediaRecorder;
    :catch_89
    move-exception v2

    .line 570
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3a

    .line 596
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8e
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    const/4 v7, 0x0

    # setter for: Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    invoke-static {v6, v7}, Lorg/telegram/messenger/camera/CameraController;->access$402(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_94} :catch_75

    goto :goto_6f
.end method

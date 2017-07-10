.class Lorg/telegram/messenger/camera/CameraController$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->initCamera()V
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
    .line 84
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$1;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 88
    :try_start_0
    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraController$1;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v11, v11, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    if-nez v11, :cond_a3

    .line 89
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    .line 90
    .local v4, "count":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/CameraInfo;>;"
    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 93
    .local v6, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "cameraId":I
    :goto_15
    if-ge v2, v4, :cond_9f

    .line 94
    invoke-static {v2, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 95
    new-instance v3, Lorg/telegram/messenger/camera/CameraInfo;

    invoke-direct {v3, v2, v6}, Lorg/telegram/messenger/camera/CameraInfo;-><init>(ILandroid/hardware/Camera$CameraInfo;)V

    .line 97
    .local v3, "cameraInfo":Lorg/telegram/messenger/camera/CameraInfo;
    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraInfo;->getCameraId()I

    move-result v11

    invoke-static {v11}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    .line 98
    .local v1, "camera":Landroid/hardware/Camera;
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 100
    .local v8, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    .line 101
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_30
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_59

    .line 102
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 103
    .local v10, "size":Landroid/hardware/Camera$Size;
    iget v11, v10, Landroid/hardware/Camera$Size;->height:I

    const/16 v12, 0x870

    if-ge v11, v12, :cond_56

    iget v11, v10, Landroid/hardware/Camera$Size;->width:I

    const/16 v12, 0x870

    if-ge v11, v12, :cond_56

    .line 104
    iget-object v11, v3, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/messenger/camera/Size;

    iget v13, v10, Landroid/hardware/Camera$Size;->width:I

    iget v14, v10, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v12, v13, v14}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 108
    .end local v10    # "size":Landroid/hardware/Camera$Size;
    :cond_59
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v7

    .line 109
    const/4 v0, 0x0

    :goto_5e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_95

    .line 110
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 111
    .restart local v10    # "size":Landroid/hardware/Camera$Size;
    const-string v11, "samsung"

    sget-object v12, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_84

    const-string v11, "jflteuc"

    sget-object v12, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_84

    iget v11, v10, Landroid/hardware/Camera$Size;->width:I

    const/16 v12, 0x800

    if-ge v11, v12, :cond_92

    .line 112
    :cond_84
    iget-object v11, v3, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/messenger/camera/Size;

    iget v13, v10, Landroid/hardware/Camera$Size;->width:I

    iget v14, v10, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v12, v13, v14}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 116
    .end local v10    # "size":Landroid/hardware/Camera$Size;
    :cond_95
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 117
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15

    .line 119
    .end local v0    # "a":I
    .end local v1    # "camera":Landroid/hardware/Camera;
    .end local v3    # "cameraInfo":Lorg/telegram/messenger/camera/CameraInfo;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v8    # "params":Landroid/hardware/Camera$Parameters;
    :cond_9f
    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraController$1;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object v9, v11, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    .line 121
    .end local v2    # "cameraId":I
    .end local v4    # "count":I
    .end local v6    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v9    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/CameraInfo;>;"
    :cond_a3
    new-instance v11, Lorg/telegram/messenger/camera/CameraController$1$1;

    invoke-direct {v11, p0}, Lorg/telegram/messenger/camera/CameraController$1$1;-><init>(Lorg/telegram/messenger/camera/CameraController$1;)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ab} :catch_ac

    .line 131
    :goto_ab
    return-void

    .line 128
    :catch_ac
    move-exception v5

    .line 129
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_ab
.end method

.class Lorg/telegram/ui/Components/PhotoPaintView$28;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->detectFaces()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 1364
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 1367
    const/4 v3, 0x0

    .line 1369
    .local v3, "faceDetector":Lcom/google/android/gms/vision/face/FaceDetector;
    :try_start_1
    new-instance v10, Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    .line 1370
    invoke-virtual {v10, v11}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v10

    const/4 v11, 0x1

    .line 1371
    invoke-virtual {v10, v11}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v10

    const/4 v11, 0x0

    .line 1372
    invoke-virtual {v10, v11}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setTrackingEnabled(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->build()Lcom/google/android/gms/vision/face/FaceDetector;

    move-result-object v3

    .line 1373
    invoke-virtual {v3}, Lcom/google/android/gms/vision/face/FaceDetector;->isOperational()Z

    move-result v10

    if-nez v10, :cond_30

    .line 1374
    const-string v10, "face detection is not operational"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_9f
    .catchall {:try_start_1 .. :try_end_2a} :catchall_a9

    .line 1400
    if-eqz v3, :cond_2f

    .line 1401
    invoke-virtual {v3}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    .line 1404
    :cond_2f
    :goto_2f
    return-void

    .line 1378
    :cond_30
    :try_start_30
    new-instance v10, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v10}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;
    invoke-static {v11}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3600(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->getFrameRotation()I
    invoke-static {v11}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3500(Lorg/telegram/ui/Components/PhotoPaintView;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/vision/Frame$Builder;->setRotation(I)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4c} :catch_9f
    .catchall {:try_start_30 .. :try_end_4c} :catchall_a9

    move-result-object v5

    .line 1381
    .local v5, "frame":Lcom/google/android/gms/vision/Frame;
    :try_start_4d
    invoke-virtual {v3, v5}, Lcom/google/android/gms/vision/face/FaceDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_50} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_9f
    .catchall {:try_start_4d .. :try_end_50} :catchall_a9

    move-result-object v4

    .line 1386
    .local v4, "faces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/face/Face;>;"
    :try_start_51
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1387
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Components/Paint/PhotoFace;>;"
    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;
    invoke-static {v10}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3700(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Size;

    move-result-object v9

    .line 1388
    .local v9, "targetSize":Lorg/telegram/ui/Components/Size;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5d
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v6, v10, :cond_94

    .line 1389
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1390
    .local v7, "key":I
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/vision/face/Face;

    .line 1391
    .local v1, "f":Lcom/google/android/gms/vision/face/Face;
    new-instance v2, Lorg/telegram/ui/Components/Paint/PhotoFace;

    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3600(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z
    invoke-static {v11}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3800(Lorg/telegram/ui/Components/PhotoPaintView;)Z

    move-result v11

    invoke-direct {v2, v1, v10, v9, v11}, Lorg/telegram/ui/Components/Paint/PhotoFace;-><init>(Lcom/google/android/gms/vision/face/Face;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)V

    .line 1392
    .local v2, "face":Lorg/telegram/ui/Components/Paint/PhotoFace;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->isSufficient()Z

    move-result v10

    if-eqz v10, :cond_87

    .line 1393
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1388
    :cond_87
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    .line 1382
    .end local v1    # "f":Lcom/google/android/gms/vision/face/Face;
    .end local v2    # "face":Lorg/telegram/ui/Components/Paint/PhotoFace;
    .end local v4    # "faces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/face/Face;>;"
    .end local v6    # "i":I
    .end local v7    # "key":I
    .end local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Components/Paint/PhotoFace;>;"
    .end local v9    # "targetSize":Lorg/telegram/ui/Components/Size;
    :catch_8a
    move-exception v0

    .line 1383
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_8e} :catch_9f
    .catchall {:try_start_51 .. :try_end_8e} :catchall_a9

    .line 1400
    if-eqz v3, :cond_2f

    .line 1401
    invoke-virtual {v3}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    goto :goto_2f

    .line 1396
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v4    # "faces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/face/Face;>;"
    .restart local v6    # "i":I
    .restart local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Components/Paint/PhotoFace;>;"
    .restart local v9    # "targetSize":Lorg/telegram/ui/Components/Size;
    :cond_94
    :try_start_94
    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoPaintView$28;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # setter for: Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;
    invoke-static {v10, v8}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3902(Lorg/telegram/ui/Components/PhotoPaintView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_99} :catch_9f
    .catchall {:try_start_94 .. :try_end_99} :catchall_a9

    .line 1400
    if-eqz v3, :cond_2f

    .line 1401
    invoke-virtual {v3}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    goto :goto_2f

    .line 1397
    .end local v4    # "faces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/gms/vision/face/Face;>;"
    .end local v5    # "frame":Lcom/google/android/gms/vision/Frame;
    .end local v6    # "i":I
    .end local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Components/Paint/PhotoFace;>;"
    .end local v9    # "targetSize":Lorg/telegram/ui/Components/Size;
    :catch_9f
    move-exception v0

    .line 1398
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a9

    .line 1400
    if-eqz v3, :cond_2f

    .line 1401
    invoke-virtual {v3}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    goto :goto_2f

    .line 1400
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_a9
    move-exception v10

    if-eqz v3, :cond_af

    .line 1401
    invoke-virtual {v3}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    :cond_af
    throw v10
.end method

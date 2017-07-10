.class Lorg/telegram/ui/PhotoViewer$28;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 2028
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V
    .registers 9
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "set"    # Z
    .param p3, "thumb"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2031
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    if-ne p1, v1, :cond_39

    if-eqz p2, :cond_39

    if-nez p3, :cond_39

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentEditMode:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-ne v1, v2, :cond_39

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 2032
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2033
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_39

    .line 2034
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v4

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-eq v1, v2, :cond_6d

    move v1, v2

    :goto_36
    invoke-virtual {v3, v0, v4, v1}, Lorg/telegram/ui/Components/PhotoCropView;->setBitmap(Landroid/graphics/Bitmap;IZ)V

    .line 2037
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_39
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    if-ne p1, v1, :cond_6c

    if-eqz p2, :cond_6c

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->scaleToFill()Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->ignoreDidSetImage:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 2038
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->wasLayout:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 2039
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->dontResetZoomOnFirstLayout:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$3502(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 2044
    :cond_6c
    :goto_6c
    return-void

    .line 2034
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6d
    const/4 v1, 0x0

    goto :goto_36

    .line 2041
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6f
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->setScaleToFill()V
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4000(Lorg/telegram/ui/PhotoViewer;)V

    goto :goto_6c
.end method

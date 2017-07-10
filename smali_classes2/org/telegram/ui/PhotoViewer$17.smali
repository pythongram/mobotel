.class Lorg/telegram/ui/PhotoViewer$17;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1859
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$17;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1862
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$17;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;

    if-eqz v0, :cond_11

    .line 1863
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$17;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 1867
    :cond_10
    :goto_10
    return-void

    .line 1864
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$17;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1865
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$17;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$17;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->cancelButtonPressed()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    :goto_28
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_10

    :cond_2c
    move v0, v1

    goto :goto_28
.end method

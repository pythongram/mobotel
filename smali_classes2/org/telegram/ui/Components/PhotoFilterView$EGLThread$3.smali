.class Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$3;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 1620
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$3;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1623
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$3;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 1624
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$3;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$4602(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1625
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1626
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_14

    .line 1627
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1629
    :cond_14
    return-void
.end method

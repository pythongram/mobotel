.class Lorg/telegram/ui/Components/PhotoFilterView$2;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 1720
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$2;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(Lorg/telegram/ui/Components/Point;FFF)V
    .registers 7
    .param p1, "centerPoint"    # Lorg/telegram/ui/Components/Point;
    .param p2, "falloff"    # F
    .param p3, "size"    # F
    .param p4, "angle"    # F

    .prologue
    .line 1723
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$2;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F
    invoke-static {v0, p3}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1802(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    .line 1724
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$2;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/Point;)Lorg/telegram/ui/Components/Point;

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$2;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    .line 1726
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$2;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F
    invoke-static {v0, p4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    .line 1727
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$2;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1728
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$2;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    .line 1730
    :cond_26
    return-void
.end method

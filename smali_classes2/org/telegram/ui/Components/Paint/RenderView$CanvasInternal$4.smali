.class Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$4;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .prologue
    .line 493
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$4;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 496
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$4;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    .line 497
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 498
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_e

    .line 499
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 501
    :cond_e
    return-void
.end method

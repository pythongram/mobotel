.class Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$4;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

.field final synthetic val$force:Z

.field final synthetic val$updateBlur:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;ZZ)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 1649
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$4;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$4;->val$updateBlur:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$4;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1652
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$4;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->needUpdateBlurTexture:Z
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$4700(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1653
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$4;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$4;->val$updateBlur:Z

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->needUpdateBlurTexture:Z
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$4702(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;Z)Z

    .line 1655
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1656
    .local v0, "newTime":J
    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$4;->val$force:Z

    if-nez v2, :cond_28

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$4;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->lastRenderCallTime:J
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$4800(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    cmp-long v2, v2, v4

    if-lez v2, :cond_36

    .line 1657
    :cond_28
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$4;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->lastRenderCallTime:J
    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$4802(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;J)J

    .line 1658
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$4;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->drawRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$4900(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1662
    :cond_36
    return-void
.end method

.class Lorg/telegram/ui/PhotoViewer$57$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$57;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$57;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$57;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$57;

    .prologue
    .line 4566
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4569
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$13000(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 4570
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$13000(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4571
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$13002(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4573
    :cond_1d
    return-void
.end method

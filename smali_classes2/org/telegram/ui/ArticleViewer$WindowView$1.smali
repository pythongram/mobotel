.class Lorg/telegram/ui/ArticleViewer$WindowView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$WindowView;->handleTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$WindowView;

.field final synthetic val$backAnimation:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$WindowView;

    .prologue
    .line 467
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView$1;->this$1:Lorg/telegram/ui/ArticleViewer$WindowView;

    iput-boolean p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView$1;->val$backAnimation:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView$1;->val$backAnimation:Z

    if-nez v0, :cond_13

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView$1;->this$1:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2000(Lorg/telegram/ui/ArticleViewer;)V

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView$1;->this$1:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->onClosed()V
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2100(Lorg/telegram/ui/ArticleViewer;)V

    .line 474
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView$1;->this$1:Lorg/telegram/ui/ArticleViewer$WindowView;

    # setter for: Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->access$2202(Lorg/telegram/ui/ArticleViewer$WindowView;Z)Z

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView$1;->this$1:Lorg/telegram/ui/ArticleViewer$WindowView;

    # setter for: Lorg/telegram/ui/ArticleViewer$WindowView;->closeAnimationInProgress:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->access$2302(Lorg/telegram/ui/ArticleViewer$WindowView;Z)Z

    .line 476
    return-void
.end method

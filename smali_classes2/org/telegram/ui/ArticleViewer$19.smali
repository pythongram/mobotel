.class Lorg/telegram/ui/ArticleViewer$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;Z)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 1944
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$19;->this$0:Lorg/telegram/ui/ArticleViewer;

    iput-boolean p2, p0, Lorg/telegram/ui/ArticleViewer$19;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1958
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$19;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5900(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$19;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5900(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1959
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$19;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$5902(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1961
    :cond_1a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x4

    .line 1947
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$19;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5900(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$19;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5900(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1948
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$19;->val$show:Z

    if-nez v0, :cond_23

    .line 1949
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$19;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$6000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1954
    :cond_22
    :goto_22
    return-void

    .line 1951
    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$19;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$6100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_22
.end method

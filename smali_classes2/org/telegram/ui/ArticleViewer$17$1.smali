.class Lorg/telegram/ui/ArticleViewer$17$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$17;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$17;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$17;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$17;

    .prologue
    .line 1869
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$17$1;->this$1:Lorg/telegram/ui/ArticleViewer$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1872
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 1873
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$17$1;->this$1:Lorg/telegram/ui/ArticleViewer$17;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$17;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5800(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1874
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$17$1;->this$1:Lorg/telegram/ui/ArticleViewer$17;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$17;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5800(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1875
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$17$1;->this$1:Lorg/telegram/ui/ArticleViewer$17;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$17;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$5802(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1877
    :cond_25
    return-void
.end method
